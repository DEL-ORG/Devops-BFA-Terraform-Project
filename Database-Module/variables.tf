variable "common_tags" {
  type = map(any)
  default = {
    "id"             = "2560"
    "owner"          = "S5edouard"
    "teams"          = "Devops-BFA"
    "environment"    = "dev"
    "project"        = "del"
    "create_by"      = "Terraform"
    "cloud_provider" = "aws"
  }
}

variable "private_subnets" {
  type = map(any)
  default = {
    us-east-2a = "subnet-00c065ebc370d1244"
    us-east-2b = "subnet-0359efad747dde880"
    us-east-2c = "subnet-011af7d7693014b0b"
  }
}

variable "vpc_id" {
  type    = string
  default = "vpc-080756535ced5e0f7"
}

variable "aws_region" {
  type    = string
  default = "us-east-2"
}

variable "postgres" {
  type = map(any)
  default = {
    engine                      = "postgres"
    engine_version              = "13.4"
    instance_class              = "db.t3.small"
    allocated_storage           = 20
    max_allocated_storage       = 100
    publicly_accessible         = false
    db_name                     = "olivia"
    final_snapshot_identifier   = "alpha-db-snapshot"
    skip_final_snapshot         = false
    backup_retention_period     = 7
    deletion_protection         = true
    maintenance_window          = "Sun:03:00-Sun:04:00"
    multi_az                    = false
    allow_major_version_upgrade = false
    auto_minor_version_upgrade  = true
    family                      = "postgres13"
    zone_id                     = "Z05173583GQ06H29KSTIC"
    aws_route53_record          = "bfadevops.com"

    rds_password_secretsmanager_secret_path = "bfa/devops"
    rds_username_secretsmanager_secret_path = "bfa/devops"

  }
}