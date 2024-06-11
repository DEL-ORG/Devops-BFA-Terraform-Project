resource "aws_instance" "bastion_host" {
  ami                    = "ami-05f364fdb936b1c01"
  instance_type          = "t2.xlarge"
  subnet_id              = "subnet-025a8b87cffa50b8f"
  key_name               = "chriskeypair"
  vpc_security_group_ids = ["${aws_security_group.bastion.id}"]

  tags = {
    Name = "Bastion-Host"
  }
}


