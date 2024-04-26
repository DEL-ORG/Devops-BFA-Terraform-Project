terraform {
  backend "s3" {
    bucket         = "2923-devops-bfa-final-tf-state"
    key            = "aws-terraform/ACM/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "2923-devops-bfa-final-tf-state-lock"
  }
}