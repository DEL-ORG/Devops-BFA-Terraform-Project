variable "tags" {
  type = map(any)
  default = {
  "id"             = "2923"
  "owner"          = "S5edouard"
  "teams"          = "devops-BFA"
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

variable "aws-ebs-csi-driver-sa" {
  type    = string
  default = "aws-ebs-csi-driver-sa"
}

variable "aws-ebs-csi-driver-ns" {
  type    = string
  default = "aws-ebs-csi-driver"
}

variable "control_plane_name" {
  type    = string
  default = "olivia-k8s"
}

variable "storage-class-name" {
  type    = string
  default = "olivia-k8s"
}
