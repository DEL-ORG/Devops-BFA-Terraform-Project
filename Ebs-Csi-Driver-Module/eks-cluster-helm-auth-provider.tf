# HELM Provider to install helm charts
provider "helm" {
  kubernetes {
    host                   = data.aws_eks_cluster.olivia-k8s.endpoint
    cluster_ca_certificate = base64decode(data.aws_eks_cluster.olivia-k8s.certificate_authority[0].data)
    token                  = data.aws_eks_cluster_auth.olivia-k8s.token
  }
}