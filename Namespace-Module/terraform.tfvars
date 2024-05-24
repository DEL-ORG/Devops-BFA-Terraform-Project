control_plane_name = "olivia-k8s"
region         = "us-east-1"
name_spaces = [
  "aws-ebs-csi-driver",
  "aws-efs-csi-driver",
  "cluster-autoscaler",
  "external-dns",
  "metrics-server",
  "app",
  "datadog",
  "prometheus",
  "monitoring",
  "argocd",
  "security",
  "jenkins",
  "calico",
  "olivia-k8s",
]

tags = {
  "id"             = "2923"
  "owner"          = "S5edouard"
  "teams"          = "devops-BFA"
  "environment"    = "devops-bfa"
  "project"        = "final"
  "create_by"      = "Terraform"
  "cloud_provider" = "aws"
}