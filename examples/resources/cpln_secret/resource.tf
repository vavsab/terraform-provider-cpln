variable "random" {
  type    = string
  default = "secret-example"
}

# Sample Public Certificate
variable "testcert" {
  type    = string
  default = <<EOT
-----BEGIN CERTIFICATE-----
MIID+zCCAuOgAwIBAgIUEwBv3WQkP7dIiEIxyj+Wi1STz7QwDQYJKoZIhvcNAQEL
BQAwgYwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIDApDYWxpZm9ybmlhMRQwEgYDVQQH
DAtMb3MgQW5nZWxlczENMAsGA1UECgwEQ1BMTjERMA8GA1UECwwIQ1BMTi1PUkcx
EDAOBgNVBAMMB2NwbG4uaW8xHjAcBgkqhkiG9w0BCQEWD3N1cHBvcnRAY3Bsbi5p
bzAeFw0yMDEwMTQxNzI4MDhaFw0zMDEwMTIxNzI4MDhaMIGMMQswCQYDVQQGEwJV
UzETMBEGA1UECAwKQ2FsaWZvcm5pYTEUMBIGA1UEBwwLTG9zIEFuZ2VsZXMxDTAL
BgNVBAoMBENQTE4xETAPBgNVBAsMCENQTE4tT1JHMRAwDgYDVQQDDAdjcGxuLmlv
MR4wHAYJKoZIhvcNAQkBFg9zdXBwb3J0QGNwbG4uaW8wggEiMA0GCSqGSIb3DQEB
AQUAA4IBDwAwggEKAoIBAQDBzN2jRf9ouoF4XG0eUxcc4f1sP8vhW1fQXjun3cl0
RsN4jRdOyTKWcls1yAxlOkwFod8d6HND9OvNrsl7U4iJIEcJL6vTqHY7jTGXQkd9
yPONMpMXYE8Dsiqtk0deoOab7fafYcvq1iWnpvg157mJ/u9qdyU+1h8DncES30Fk
PsG8TsIsjx94JkTJeMmEJxtws4dfuoCk88INbBHLjxBQgwTu0vgMxN34b5z+esHr
aetDN2fqxSoTOeIlyFzeS+kwG3GK4I1hUQBiL2TeDrnEY6qP/ZoGuyyVnsT/6pHY
/BTAcH3Rgeqose7mqBT+7zlxDfHYHceuNB/ljq0e1j69AgMBAAGjUzBRMB0GA1Ud
DgQWBBRxncC/8RRio/S9Ly8tKFS7WnTcNTAfBgNVHSMEGDAWgBRxncC/8RRio/S9
Ly8tKFS7WnTcNTAPBgNVHRMBAf8EBTADAQH/MA0GCSqGSIb3DQEBCwUAA4IBAQAr
sDZQj4K47fW6JkJbxlzZ1hd7IX6cQhI/DRIdTGR1u0kM1RtZoS0UtV5qsYV/g/S4
ChuB/aIARyTWvHKDhcT3bRGHLnoZJ8pLlQh4nEfO07SRhyeNiO4qmWM9az0nP5qD
wAXpLpmYIairzAgY7QXbk5wXbTrXli3mz14VaNoqN4s7iyLtHn5TGAXc12aMwo7M
5yn/RGxoWQoJqSQKc9nf909cR81AVCdG1dFcp7u8Ud1pTtlmiU9ZJ/YOXDCT/1hZ
YxoeotDBBOIao3Ym/3351somMoQ7Lz6hRWvG0WhDIsCXvth4XSxRkZFXgjWNuhdD
u2ZCis/EwXsqRJPkIPnL
-----END CERTIFICATE-----		
EOT
}

# Sample Private Certificate
variable "testcertprivate" {
  type    = string
  default = <<EOT
-----BEGIN PRIVATE KEY-----
MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDBzN2jRf9ouoF4
XG0eUxcc4f1sP8vhW1fQXjun3cl0RsN4jRdOyTKWcls1yAxlOkwFod8d6HND9OvN
rsl7U4iJIEcJL6vTqHY7jTGXQkd9yPONMpMXYE8Dsiqtk0deoOab7fafYcvq1iWn
pvg157mJ/u9qdyU+1h8DncES30FkPsG8TsIsjx94JkTJeMmEJxtws4dfuoCk88IN
bBHLjxBQgwTu0vgMxN34b5z+esHraetDN2fqxSoTOeIlyFzeS+kwG3GK4I1hUQBi
L2TeDrnEY6qP/ZoGuyyVnsT/6pHY/BTAcH3Rgeqose7mqBT+7zlxDfHYHceuNB/l
jq0e1j69AgMBAAECggEAPGhrPZV4A2D/MlE9AhLMRYh7wd4w4tHiEWUOG0kank/g
Zhc0iK5WQmbq31y34GXHhInsThpCs5AIYFh3HSXwjS2udsKRQKxmDjH4nzldp2uX
3w9Aoiy29GP4wZoCyRBGUZxfH1cQhOazXgrBm6vbPZRldD4nMer0R+BIamWEsIYD
YjDj1pT0noLUSeqoLmGxSQ4DNIBQVZB/T8ziMcEzl6bhprT0QrapJSyD2CtA8tH1
Z8cyhmyE0CUvSkV4K2ecvVukWBJvrAYc6euPAnkS5LJrQotI5+3jJO2QawOlL6Uw
rFWBpgBrCgbzquMRpDCQ/J9/GDYaZjim4YdonboBgQKBgQD7jx3CVnG4LDz198am
spmPwKCW1ke6PhlG7zf3YR00xg9vPBYiy4obb1Jg6em1wr+iZ0dEt8fimeZXewBf
LzlrR8T1Or0eLzfbn+GlLIKGKhn2pKB/i1iolkfIonchqXRk9WNx+PzjgUqiYWRC
/1tH2BsODlVrzKL2lnbWKNIFdQKBgQDFOLedpMeYemLhrsU1TXGt1xTxAbWvOCyt
vig/huyz4SQENXyu3ImPzxIxpTHxKhUaXo/qFXn0jhqnf0LfWI4nbQUbkivb5BPr
KY9aj7XwwsY4MXW5C12Qi0lIwHOWCmfzvyS7TCMqnQb7sT4Mjmm4ydEbiI1TjlFJ
D/RFxzcDKQKBgQCehPcJyZNrrWTU0sh5rz4ZWhdYNbuJXyxqiMBJwQa4hL6hJ8oD
LyPeWe4daAmAIjLEUjSU1wK8hqKiKb54PLgAJH+20MbvyG14lm2Iul2d0dX+mIsT
FGpQAjNF+Sr9KV1RaVi7L12ct5KidKDLn0KUKVgTKXEmtxNSNEq6dYqzKQKBgDI8
zljzvnwSwNloIYgAYDK+FPGHU/Z8QrVHOQ1lmyn+8aO41DfeqZPeVW4b/GrII3QC
HnqsWdJ32EZOXoRyFFPqq2BojY+Hu6MthPy2msvncYKi5q/qOz00nchQbaEMqYon
aH3lWRfjxAGdFocwR7HwhrmSwR1FpWMNE1Yq9tJxAoGBANc0nZSy5ZlTiMWdRrTt
gFc9N/jz8OL6qLrJtX2Axyv7Vv8H/gbDg4olLR+Io38M0S1WwEHsaIJLIvJ6msjl
/LlseAW6oiO6jzhWEr0VQSLkuJn45hG/uy7t19SDuNR7W5NuEr0YbWd6fZEpR7RR
S1hFKnRRcrVqA+HjWnZ//BGi
-----END PRIVATE KEY-----
EOT
}

# Sample Private Key
variable "test-secret-key" {
  type    = string
  default = <<EOT
-----BEGIN RSA PRIVATE KEY-----
Proc-Type: 4,ENCRYPTED
DEK-Info: DES-EDE3-CBC,9A26BB15304B18E7

ZdBgMExsvIJEsIFDMQ02xh4nDnhXEGUNu7LiWIZjn9WS6QB2jApyOFOBWmp0lK6L
dIJ+Mb8wMeHtkiKS6ZbYeea8M29kwEejZRnKl1Wq0EFycdwbONtbcbjzF+tQGEBT
gQQgkY7wjDWl8HwjFEA+NUuitzi6uI2xWlQpFdUrmqJAZCbxNFa0aM8nW6jnitvP
616ps3HjLnWCjoyqS4hWxiWmt+VE3KruPnUVVV7bWlzc6jnoZcSaeqeaoQrNKguH
te2iBIMdY/uldb7Ik2Kxr2+kBRmV4YNkp1EelNi/m39VcoUHJLk1jLldzuINhbi2
IRqYZe4EEMSYdb3TkSosXa64Sz7jMBz5AxlA0n78FKlB9G5FAxaXcVYNQIlvzCbw
uXPbQd/UYKUuEI1Yn8OmGBN5xcOdgWz8hfyxA2Hq1tmo1XN6snavGe7TKbZd70N+
1yFbclB2T1z8fPcLwUZUxOl4g2DoMMHIzCSPaIe/otT8389k4H6hEulLis4lW0p3
qopL5kdpxmSGgXsX6q6CUFb/0cw9HskNT3zbzKLx2MzjFCo93IB07UxPwkCD2kb1
sLKMcpTC8a0vLaTVNYgDX7wW/YjBrCokaqk0z1whuN6iSReOtvmu5ybrq1Ksg8UQ
yvCSScM/+muKi+gbEOskQs4Ph3ZLHqAX3/XYoyBcFnPNxVHTIa5Dcju6h5gl1/uY
6tkRsHDr0Lzy8pd6jjf/ApPf9ypCuxKUO1q8PzPg2E4bmEFxc8zOB2NLvfPgFrUR
0Sbkapv/6x6nNRw75cu69c5we/atip6wst8J1MSU0fTqb6bZ3TF2pDyNEOkdkvoZ
YZ0r3hUytdT0pImoDLKoyy17mtHLLApzHyIgmR3cqtSt07ncmC5lyEBcZBrQXMa8
aZeOr8iUWQE/q+4BvoxeKsOD6ttKuFnrgl0rmMnYQsSyLJOPizrU4L1d1HMIKswm
iW+Rg7xlWmQg95m8XEWTjAb3tuNz/tGXC7Qa88HvC7YfyG69yM61oPsT83YnxcBT
C/X67lSFTYguFa3HgDZpjGq7Hc/Q7nhaoqNMEs01O6jbcmrue8IIa2FH1tTwPN0W
D7JefjCQjEghue2mjc0fovOGe9A9jvWf+gJHF3vRtFa67uQiQxge9zUzpHyVNpOj
Ve0y0HvibNTd6TSCArctJpIcwpjO3MTT5LBJ1p/8v4b4+knEKD2c69jumNbKGbWr
Wjq39M/MGNUO5SbZMO3gFCt6fgtXkOktH9pJ9iOQpYKgl7QTe2qQygfWkIm0EZRN
6EaQdNNKgENWicpKyKQ4BxoY1LYAHFHJ95VisLf3KmmOF5MwajADZQT/yth3gvht
xx21b9iudcgq/CRccSvfIPIWZKi6oaqNIXK+E3DQd40TUopLsBWzacTZn9maSZtW
RyAY1TkRn1qDR2soyhBcihrX5PZ83jnOlM3XTdfF1784g8zB9ooDnK7mUKueH1W3
hWFADMUF7uaBbo5EZ9sE+dFPzWPJLhu2j67a1iHmByqEvFY64lzq7VwwU/GE8JdA
85oEkhg1ZEPJp3OYTQfPI/CC/2fc93Exf6wmaXuss8AHehuGcKQniOZmFOKOBprv
-----END RSA PRIVATE KEY-----
EOT
}

# Sample Public Key
variable "test-public-key" {
  type    = string
  default = <<EOT
-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAwrVyExI0uvRmwCAKFHiv
baAcPMcKJDa6f6TtaVo2p8jyfEhVwDTmR3FUrDDZAjh0Q8G/Up8Ob3+IJafNymCO
BhUKou+8ie7guqsbU9JrT0Zos1k/pd0aVfnAR0EpW3es/7fdkWUszU0uweeEj22m
XMlLplnqqoYOGAhuNMqGsZwBr36Bxq9EeB2O79QsAFDNkPVg7xIaYKn32j69o0Zr
ryYI8xqOYYy5Dw6CX+++YYLYiR/PkLYJTVAsxXeqyltCfb3Iv7vN5HrfoYBhndr3
NxBPkcIJZeh3Z+QzfJ5U+bB5fP/aOsEk5bPbtLzylj2KnOOM/ZxXJtOcu0xtJLd3
XwIDAQAB
-----END PUBLIC KEY-----
EOT
}

# AWS Secret
resource "cpln_secret" "aws" {

  name        = "aws-${var.random}"
  description = "aws description ${var.random}"

  tags = {
    terraform_generated = "true"
    example             = "true"
    secret_type         = "aws"
  }

  aws {
    # Required
    # Can use CPLN_SECRET_AWS_SECRET_KEY Environment Variable  
    secret_key = "AKIAIOSFODNN7EXAMPLE"

    # Required
    # Can use CPLN_SECRET_AWS_ACCESS_KEY Environment Variable  
    access_key = "AKIAwJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"

    # Optional
    # Can use CPLN_SECRET_AWS_ROLE_ARN Environment Variable  
    role_arn = "arn:awskey"
  }
}

# Azure Secret
resource "cpln_secret" "azure_sdk" {

  name        = "azuresdk-${var.random}"
  description = "azuresdk description ${var.random}"

  tags = {
    terraform_generated = "true"
    example             = "true"
    secret_type         = "azure-sdk"
  }

  # Required
  # Can use CPLN_SECRET_AZURE_SDK Environment Variable  
  azure_sdk = "{\"subscriptionId\":\"2cd8674e-4f89-4a1f-b420-7a1361b46ef7\",\"tenantId\":\"292f5674-c8b0-488b-9ff8-6d30d77f38d9\",\"clientId\":\"649846ce-d862-49d5-a5eb-7d5aad90f54e\",\"clientSecret\":\"cpln\"}"
}

# Docker Secret
resource "cpln_secret" "docker" {

  name        = "docker-${var.random}"
  description = "docker description ${var.random}"

  tags = {
    terraform_generated = "true"
    example             = "true"
    secret_type         = "docker"
  }

  # Required
  # Can use CPLN_SECRET_DOCKER Environment Variable 
  docker = "{\"auths\":{\"your-registry-server\":{\"username\":\"your-name\",\"password\":\"your-pword\",\"email\":\"your-email\",\"auth\":\"<Secret>\"}}}"
}

# Amazon ECR Secret
resource "cpln_secret" "ecr" {

  name        = "ecr-${var.random}"
  description = "ecr description ${var.random}"

  tags = {
    terraform_generated = "true"
    example             = "true"
    secret_type         = "ecr"
  }

  ecr {

    # Required
    # Can use CPLN_SECRET_AWS_SECRET_KEY Environment Variable 
    secret_key = "AKIAIOSFODNN7EXAMPLE"

    # Required
    # Can use CPLN_SECRET_AWS_ACCESS_KEY Environment Variable 
    access_key = "AKIAwJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"

    # Optional
    # Can use CPLN_SECRET_AWS_ROLE_ARN Environment Variable 
    role_arn = "arn:awskey"

    # Required
    # Can use CPLN_SECRET_AWS_REPOS Environment Variable 
    repos = ["911716931765.dkr.ecr.us-west-2.amazonaws.com/env-test", "011716931765.dkr.ecr.us-west-2.amazonaws.com/cpln-test"]
  }
}

# Dictionary Secret
resource "cpln_secret" "dictionary" {

  name        = "dictionary-${var.random}"
  description = "dictionary description ${var.random}"

  tags = {
    terraform_generated = "true"
    example             = "true"
    secret_type         = "dictionary"
  }

  dictionary = {
    key01 = "value-01"
    key02 = "value-02"
  }
}

# GCP Secret
resource "cpln_secret" "gcp" {

  name        = "gcp-${var.random}"
  description = "gcp description ${var.random}"

  tags = {
    terraform_generated = "true"
    example             = "true"
    secret_type         = "gcp"
  }

  # Required
  # Can use CPLN_SECRET_GCP Environment Variable 
  gcp = "{\"type\":\"gcp\",\"project_id\":\"cpln12345\",\"private_key_id\":\"pvt_key\",\"private_key\":\"key\",\"client_email\":\"support@cpln.io\",\"client_id\":\"12744\",\"auth_uri\":\"cloud.google.com\",\"token_uri\":\"token.cloud.google.com\",\"auth_provider_x509_cert_url\":\"cert.google.com\",\"client_x509_cert_url\":\"cert.google.com\"}"
}

# Keypair Secret
resource "cpln_secret" "keypair" {

  name        = "keypair-${var.random}"
  description = "keypair description ${var.random}"

  tags = {
    terraform_generated = "true"
    example             = "true"
    secret_type         = "keypair"
  }

  keypair {

    # Required
    # Can use CPLN_SECRET_KEY_PAIR_SECRET_KEY Environment Variable 
    secret_key = var.test-secret-key

    # Optional
    # Can use CPLN_SECRET_KEY_PAIR_PUBLIC_KEY Environment Variable 
    public_key = var.test-public-key

    # Optional
    # Can use CPLN_SECRET_KEY_PAIR_PASSPHRASE Environment Variable 
    passphrase = "cpln"
  }
}

# Opaque Secret
resource "cpln_secret" "opaque" {

  name        = "opaque-${var.random}"
  description = "opaque description ${var.random}"

  tags = {
    terraform_generated = "true"
    example             = "true"
    secret_type         = "opaque"
  }

  opaque {

    # Required
    # Can use CPLN_SECRET_OPAQUE_PAYLOAD Environment Variable
    payload = "opaque_secret_payload"

    # Optional
    # Can use CPLN_SECRET_OPAQUE_ENCODING Environment Variable
    # Options: `plain` or `base64`
    encoding = "plain"
  }
}

# TLS Secret
resource "cpln_secret" "tls" {

  name        = "tls-${var.random}"
  description = "tls description ${var.random}"

  tags = {
    terraform_generated = "true"
    example             = "true"
    secret_type         = "tls"
  }

  tls {

    # Required
    # Can use CPLN_SECRET_TLS_KEY Environment Variable
    key = var.testcertprivate

    # Required
    # Can use CPLN_SECRET_TLS_CERT Environment Variable
    cert = var.testcert

    # Optional
    # Can use CPLN_SECRET_TLS_CHAIN Environment Variable
    chain = var.testcert
  }
}

# Username/Password Secret
resource "cpln_secret" "userpass" {

  name        = "userpass-${var.random}"
  description = "userpass description ${var.random}"

  tags = {
    terraform_generated = "true"
    example             = "true"
    secret_type         = "userpass"
  }

  userpass {

    # Required
    # Can use CPLN_SECRET_USERPASS_USERNAME Environment Variable
    username = "cpln_username"

    # Required
    # Can use CPLN_SECRET_USERPASS_PASSWORD Environment Variable
    password = "cpln_password"

    # Optional
    # Can use USERPASS_ENCODING Environment Variable
    encoding = "plain"
  }
}
