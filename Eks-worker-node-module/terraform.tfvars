aws_region = "us-east-1"

control_plane_name = "olivia-k8s"
private_subnets = {
  us-east-1a = "subnet-066736fd0d05efd2c"
  us-east-1b = "subnet-04de5e872483d4c01"
  us-east-1c = "subnet-085fc7e68c0cff209"
}

eks_version  = "1.29"
node_min     = "1"
desired_node = "1"
node_max     = "3"

blue_node_color  = "blue"
green_node_color = "green"

blue  = "true"
green = "false"

cluster_name = "olivia-k8s"
ec2_ssh_key  = "capitaine23"
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
