variable "tags" {
  type        = map(string)
  description = "Common tags to be applied to resources"
  default = {
    "id"             = "2560"
    "owner"          = "DevOps Easy Learning"
    "teams"          = "DEL"
    "environment"    = "dev"
    "project"        = "del"
    "create_by"      = "Terraform"
    "cloud_provider" = "aws"
  }
}

variable "region" {
  type = string
  default = "us-east-2"
}

variable "cluster_name" {
  type = string
}

variable "eks_version" {
  type = string
  default = "1.29"
}

variable "endpoint_private_access" {
  type = bool
  default = false
}

variable "endpoint_public_access" {
  type = bool
  default = true
}

variable "public_subnets" {
  type = map(string)
  default = {
    us-east-1a = "subnet-01ca715268155b78e"
    us-east-1b = "subnet-0224a65c32f4a12b5"
    us-east-1c = "subnet-02b0aa8c03ca80d14"
  }
}
