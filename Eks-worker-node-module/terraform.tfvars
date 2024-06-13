aws_region = "us-east-1"

control_plane_name = "olivia-k8s"
private_subnets = {
  us-east-1a = "subnet-02a28e1c74cfd5108"
  us-east-1b = "subnet-08d58d81c9075242a"
  us-east-1c = "subnet-09030d0e4038d357d"
}

eks_version  = "1.29"
node_min     = "1"
desired_node = "1"
node_max     = "3"

blue_node_color  = "blue"
green_node_color = "green"

blue  = "true"
green = "false"

cluster_name = "OLIVIA-K8S"
ec2_ssh_key  = "chriskeypair"
# deployment_nodegroup      = "blue_green"
capacity_type             = "ON_DEMAND"
ami_type                  = "AL2_x86_64"
instance_types            = "t3.medium"
disk_size                 = "10"
shared_owned              = "shared"
enable_cluster_autoscaler = "true"

tags = {
  "id"             = "2108"
  "owner"          = "S5KISITO"
  "teams"          = "usa-devops"
  "environment"    = "devops-bfa"
  "project"        = "final"
  "create_by"      = "Terraform"
  "cloud_provider" = "aws"

}
