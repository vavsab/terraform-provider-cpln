package cpln

import (
	"context"
	"fmt"

	client "terraform-provider-cpln/internal/provider/client"

	"github.com/hashicorp/terraform-plugin-sdk/v2/diag"
	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
)

func resourceDomainRoute() *schema.Resource {
	return &schema.Resource{
		CreateContext: resourceDomainRouteCreate,
		ReadContext:   resourceDomainRouteRead,
		UpdateContext: resourceDomainRouteUpdate,
		DeleteContext: resourceDomainRouteDelete,
		Schema: map[string]*schema.Schema{
			"domain_link": {
				Type:     schema.TypeString,
				ForceNew: true,
				Required: true,
			},
			"domain_port": {
				Type:     schema.TypeInt,
				ForceNew: true,
				Optional: true,
				Default:  443,
			},
			"prefix": {
				Type:     schema.TypeString,
				ForceNew: true,
				Required: true,
			},
			"replace_prefix": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"workload_link": {
				Type:     schema.TypeString,
				Required: true,
			},
			"port": {
				Type:     schema.TypeInt,
				Optional: true,
			},
		},
		Importer: &schema.ResourceImporter{},
	}
}

func resourceDomainRouteCreate(ctx context.Context, d *schema.ResourceData, m interface{}) diag.Diagnostics {

	domainLink := d.Get("domain_link").(string)
	domainPort := d.Get("domain_port").(int)

	route := client.DomainRoute{
		Prefix:        GetString(d.Get("prefix")),
		ReplacePrefix: GetString(d.Get("replace_prefix")),
		WorkloadLink:  GetString(d.Get("workload_link")),
		Port:          GetInt(d.Get("port")),
	}

	c := m.(*client.Client)
	err := c.AddDomainRoute(GetNameFromSelfLink(domainLink), domainPort, route)

	if err != nil {
		return diag.FromErr(err)
	}

	return setDomainRoute(d, domainLink, domainPort, &route)
}

func resourceDomainRouteRead(ctx context.Context, d *schema.ResourceData, m interface{}) diag.Diagnostics {

	domainLink := d.Get("domain_link").(string)
	domainPort := d.Get("domain_port").(int)
	prefix := d.Get("prefix").(string)

	c := m.(*client.Client)
	domain, code, err := c.GetDomain(GetNameFromSelfLink(domainLink))

	if code == 404 {
		return setDomainRoute(d, domainLink, domainPort, nil)
	}

	if err != nil {
		return diag.FromErr(err)
	}

	for _, value := range *domain.Spec.Ports {

		if *value.Number == domainPort && (value.Routes != nil && len(*value.Routes) > 0) {

			for _, route := range *value.Routes {

				if *route.Prefix != prefix {
					continue
				}

				return setDomainRoute(d, domainLink, domainPort, &route)
			}
		}
	}

	return nil
}

func resourceDomainRouteUpdate(ctx context.Context, d *schema.ResourceData, m interface{}) diag.Diagnostics {

	if d.HasChanges("replace_prefix", "workload_link", "port") {

		domainLink := d.Get("domain_link").(string)
		domainPort := d.Get("domain_port").(int)

		route := &client.DomainRoute{
			Prefix:        GetString(d.Get("prefix")),
			ReplacePrefix: GetString(d.Get("replace_prefix")),
			WorkloadLink:  GetString(d.Get("workload_link")),
			Port:          GetInt(d.Get("port")),
		}

		c := m.(*client.Client)

		err := c.UpdateDomainRoute(GetNameFromSelfLink(domainLink), domainPort, route)

		if err != nil {
			return diag.FromErr(err)
		}

		return setDomainRoute(d, domainLink, domainPort, route)
	}

	return nil
}

func resourceDomainRouteDelete(ctx context.Context, d *schema.ResourceData, m interface{}) diag.Diagnostics {

	domainLink := d.Get("domain_link").(string)
	domainPort := d.Get("domain_port").(int)
	prefix := d.Get("prefix").(string)

	c := m.(*client.Client)

	err := c.RemoveDomainRoute(GetNameFromSelfLink(domainLink), domainPort, prefix)

	if err != nil {
		return diag.FromErr(err)
	}

	d.SetId("")

	return nil
}

func setDomainRoute(d *schema.ResourceData, domainLink string, domainPort int, route *client.DomainRoute) diag.Diagnostics {

	if route == nil {
		d.SetId("")
		return nil
	}

	d.SetId(fmt.Sprintf("%s_%d_%s", domainLink, domainPort, *route.Prefix))

	if err := d.Set("domain_link", domainLink); err != nil {
		return diag.FromErr(err)
	}

	if err := d.Set("domain_port", domainPort); err != nil {
		return diag.FromErr(err)
	}

	if err := d.Set("prefix", route.Prefix); err != nil {
		return diag.FromErr(err)
	}

	if err := d.Set("replace_prefix", route.ReplacePrefix); err != nil {
		return diag.FromErr(err)
	}

	if err := d.Set("workload_link", route.WorkloadLink); err != nil {
		return diag.FromErr(err)
	}

	if err := d.Set("port", route.Port); err != nil {
		return diag.FromErr(err)
	}

	return nil
}