aws_region = "us-east-2"

control_plane_name = ""
# private_subnets = {
#   us-east-1a = "subnet-096d45c28d9fb4c14"
#   us-east-1b = "subnet-05f285a35173783b0"
#   us-east-1c = "subnet-0fe3255479ad7c3a4"
# }

eks_version  = "1.29"
node_min     = "1"
desired_node = "1"
node_max     = "3"

blue_node_color  = "blue"
green_node_color = "green"

blue  = "true"
green = "false"

cluster_name = "dev-revive"
ec2_ssh_key  = "bastion-key"
# deployment_nodegroup      = "blue_green"
capacity_type             = "ON_DEMAND"
ami_type                  = "AL2_x86_64"
instance_types            = "t3.medium"
disk_size                 = "10"
shared_owned              = "shared"
enable_cluster_autoscaler = "true"

tags = {
  "id"             = "2923"
  "owner"          = "S5edouard"
  "teams"          = "devops-BFA"
  "environment"    = "devops-bfa"
  "project"        = "final"
  "create_by"      = "Terraform"
  "cloud_provider" = "aws"
}