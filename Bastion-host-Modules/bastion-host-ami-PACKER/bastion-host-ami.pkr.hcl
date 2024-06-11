packer {
  required_plugins {
    amazon = {
      version = ">= 1.2.8"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

source "amazon-ebs" "ubuntu" {
  ami_name      = "Bastion-host-AMI"
  instance_type = "t2.xlarge" # Adjust instance type as needed
  region        = "us-east-1"
  source_ami_filter {
    filters = {
      name                = "ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-20240423"
      root-device-type    = "ebs"
      virtualization-type = "hvm"
    }
    most_recent = true
    owners      = ["099720109477"]
  }
  ssh_username = "ubuntu"
}

build {
  name = "Bastion-host-AMI"
  sources = [
    "source.amazon-ebs.ubuntu"
  ]
  provisioner "shell" {
    script = "packages.sh"
  }
}

variables {
  aws_access_key = "{{env ⁠ AWS_ACCESS_KEY_ID ⁠}}"     # Access key from environment variable
  aws_secret_key = "{{env ⁠ AWS_SECRET_ACCESS_KEY ⁠}}" # Secret key from environment variable
}
