aws_region = "us-east-2"

cidr_block = "10.10.0.0/16"
private-subnets-cdir = [
  "10.10.1.0/24",
  "10.10.2.0/24",
  "10.10.3.0/24",
]
public-subnet-cidr = [
  "10.10.4.0/24",
  "10.10.5.0/24",
  "10.10.6.0/24",
]
aws_availability_zones = [
  "us-east-2a",
  "us-east-2b",
  "us-east-2c",
]
instance_tenancy                 = "default"
enable_dns_support               = true
enable_dns_hostnames             = true
assign_generated_ipv6_cidr_block = false

cluster_name = "2923-project-cluster"

common_tags = {
  "id"             = "2923"
  "owner"          = "S5edouard"
  "teams"          = "devops-BFA"
  "environment"    = "devops-bfa"
  "project"        = "final"
  "create_by"      = "Terraform"
  "cloud_provider" = "aws"
}