resource "aws_secretsmanager_secret" "teller_certificate" {
  name = "TellerCertificate"
  description = "Certificate to make API calls to Teller"
}

resource "aws_secretsmanager_secret_version" "teller_certificate_version" {
  secret_id     = aws_secretsmanager_secret.teller_certificate.id
  secret_string = file("${path.module}/teller/certificate.pem")
}

resource "aws_secretsmanager_secret" "teller_private_key" {
  name = "TellerPrivateKey"
  description = "Private key to make API calls to Teller"
}

resource "aws_secretsmanager_secret_version" "teller_private_key_version" {
  secret_id     = aws_secretsmanager_secret.teller_private_key.id
  secret_string = file("${path.module}/teller/private_key.pem")
}
