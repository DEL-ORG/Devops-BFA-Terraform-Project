variable "name_spaces" {
  type = list(string)
}

variable "tags" {
  type = map(any)
  default = {
  "id"             = "2923"
  "owner"          = "S5edouard"
  "teams"          = "devops-BFA"
  "environment"    = "devops-bfa"
  "project"        = "final"
  "create_by"      = "Terraform"
  "cloud_provider" = "aws"
  }
}

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "control_plane_name" {
  type    = string
  default = "dev-revive"
}