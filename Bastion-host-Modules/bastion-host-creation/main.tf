resource "aws_instance" "bastion_host" {
  ami                    = "ami-03cfdd504fc611459"
  instance_type          = "t2.xlarge"
  subnet_id              = "subnet-025a8b87cffa50b8f"
  key_name               = "chriskeypair"
  vpc_security_group_ids = ["${aws_security_group.bastion.id}"]

  tags = {
    Name = "Bastion-Host"
  }
}

terraform {
  backend "s3" {
    bucket         = "2108-devops-bfa-final-tf-state"
    key            = "aws-terraform/vpc/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "2108-devops-bfa-final-tf-state-lock"
  }
}