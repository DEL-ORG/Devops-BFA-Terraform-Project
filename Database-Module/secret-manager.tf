
resource "aws_secretsmanager_secret" "example" {
  name                    = "olivia-secret02"
  description             = "Rotated example Secrets Manager secret"
  kms_key_id              = aws_kms_key.olivia.key_id
  recovery_window_in_days = 7
}

resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "_!%^"
}


resource "aws_secretsmanager_secret_version" "secret" {
  secret_id     = aws_secretsmanager_secret.example.id
  secret_string = random_password.password.result
}

# KMS key used by Secrets Manager for RDS
resource "aws_kms_key" "olivia" {
  description             = "KMS key for RDS"
  deletion_window_in_days = 7
  is_enabled              = true
  enable_key_rotation     = true

  tags = merge(var.common_tags, {
    Name = format("%s-%s-%s-olivia-db", var.common_tags["id"], var.common_tags["environment"], var.common_tags["project"])
    },
  )
}
