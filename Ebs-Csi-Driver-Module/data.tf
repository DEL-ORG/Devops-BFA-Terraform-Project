data "aws_eks_cluster" "olivia-k8s" {
  name = var.control_plane_name
}
data "aws_eks_cluster_auth" "olivia-k8s" {

  name = var.control_plane_name
}

# Get AWS Account ID
data "aws_caller_identity" "current" {}