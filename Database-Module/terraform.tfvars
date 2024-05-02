aws_region = "us-east-2"
vpc_id     = "vpc-01409657b9c83a712"
private_subnets = {
  us-east-2a = "subnet-0910983657060a4a9"
  us-east-2b = "subnet-0490bb0375db73aea"
  us-east-2c = "subnet-09abfc801c1b49789"
}

postgres = {
  engine                      = "postgres"
  engine_version              = "16.1"
  instance_class              = "db.t3.small"
  allocated_storage           = 20
  max_allocated_storage       = 100
  publicly_accessible         = false
  db_name                     = "olivia"
  final_snapshot_identifier   = "alpha-db-snapshot"
  skip_final_snapshot         = false
  backup_retention_period     = 7
  deletion_protection         = false
  maintenance_window          = "Sun:03:00-Sun:04:00"
  multi_az                    = false
  allow_major_version_upgrade = false
  auto_minor_version_upgrade  = true
  family                      = "postgres13"
  zone_id                     = "Z05173583GQ06H29KSTIC"
  aws_route53_record          = "bfadevops.com"

}

common_tags = {
  "id"             = "2560"
  "owner"          = "DevOps Easy Learning"
  "teams"          = "bfadevops"
  "environment"    = "dev"
  "project"        = "del"
  "create_by"      = "Terraform"
  "cloud_provider" = "aws"
}
