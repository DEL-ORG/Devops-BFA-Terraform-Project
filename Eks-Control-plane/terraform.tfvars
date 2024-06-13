region                  = "us-east-1"
cluster_name            = "OLIVIA-K8S"
eks_version             = 1.29
endpoint_private_access = false
endpoint_public_access  = true
tags = {
  "id"             = "2108"
  "owner"          = "S5KISITO"
  "teams"          = "usa-devops"
  "environment"    = "devops-bfa"
  "project"        = "final"
  "create_by"      = "Terraform"
  "cloud_provider" = "aws"

}

public_subnets = {
  us-east-1a = "subnet-078e9659bf03f9e19"
  us-east-1b = "subnet-08d58d81c9075242a"
  us-east-1c = "subnet-0fb7c2f86f8af1028"
}


