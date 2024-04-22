variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "aws_region_backup" {
  type    = string
  default = "us-east-2"
}

variable "common_tags" {
  type = map(any)
  default = {
    "id"             = "2108"
    "owner"          = "S5KISITO"
    "teams"          = "usa-devops"
    "environment"    = "devops-bfa"
    "project"        = "final"
    "create_by"      = "Terraform"
    "cloud_provider" = "aws"
  }
}