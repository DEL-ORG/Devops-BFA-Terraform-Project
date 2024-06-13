ariable "tags" {
  type        = map(string)
  description = "Common tags to be applied to resources"
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

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "cluster_name" {
  type = string
}

variable "eks_version" {
  type    = string
  default = "1.29"
}

variable "endpoint_private_access" {
  type    = bool
  default = false
}

variable "endpoint_public_access" {
  type    = bool
  default = true
}

variable "public_subnets" {
  type = map(string)
  default = {

    us-east-1a = "subnet-078e9659bf03f9e19"
    us-east-1b = "subnet-08d58d81c9075242a"
    us-east-1c = "subnet-0fb7c2f86f8af1028"
  }
}
