variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "domain_name" {
  type    = string
  default = "devopsbfa.net"
}

variable "subject_alternative_names" {
  type    = string
  default = "devopsbfa.net"
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
