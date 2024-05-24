resource "aws_instance" "bastion_host" {
  ami                    = "ami-0f15b007c8270e1f6"
  instance_type          = "t2.xlarge"
  subnet_id              = "subnet-025a8b87cffa50b8f"
  key_name               = "olivia23"
  vpc_security_group_ids = ["${aws_security_group.bastion.id}"]

  tags = {
    Name = "Bastion-Host"
  }
}

terraform {
  backend "s3" {
    bucket         = "2923-devops-bfa-final-tf-state"
    key            = "aws-terraform/bastion-host/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "2923-devops-bfa-final-tf-state-lock"
  }
}
