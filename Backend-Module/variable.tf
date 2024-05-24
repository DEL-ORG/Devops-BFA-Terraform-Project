variable "aws_region_main" {
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
    "id"             = "2923"
    "owner"          = "S5edouard"
    "teams"          = "devops-bfa"
    "environment"    = "devops-bfa"
    "project"        = "final"
    "create_by"      = "Terraform"
    "cloud_provider" = "aws"
  }
}
