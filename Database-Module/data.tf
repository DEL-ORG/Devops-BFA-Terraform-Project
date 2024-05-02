

data "aws_secretsmanager_secret" "example" {
  name = "olivia-secret02"
  depends_on = [
    aws_secretsmanager_secret.example
  ]
}


data "aws_secretsmanager_secret_version" "secret" {
  # Specify the necessary parameters here
  secret_id = data.aws_secretsmanager_secret.example.id
  
}
