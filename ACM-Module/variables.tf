variable "aws_region" {
  type    = string
  default = "us-east-2"
}

variable "domain_name" {
  type    = string
  default = "bfadevops.com"
}

variable "subject_alternative_names" {
  type    = string
  default = "bfadevops.com"
}

variable "tags" {
  type = map(any)
  default = {
    "id"             = "2923"
    "owner"          = "S5edouard"
    "teams"          = "usa-devops"
    "environment"    = "devops-bfa"
    "project"        = "final"
    "create_by"      = "Terraform"
    "cloud_provider" = "aws"
  }
}