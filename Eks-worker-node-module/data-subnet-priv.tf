data "aws_subnet" "sub_priv1" {
  filter {
    name   = "tag:Name"
    values = ["2923-devops-bfa-final-private-01-us-east-1a"]
  }
}

data "aws_subnet" "sub_priv2" {
  filter {
    name   = "tag:Name"
    values = ["2923-devops-bfa-final-private-02-us-east-1b"]
  }
}

data "aws_subnet" "sub_priv3" {
  filter {
    name   = "tag:Name"
    values = ["2923-devops-bfa-final-private-03-us-east-1c"]
  }
}
