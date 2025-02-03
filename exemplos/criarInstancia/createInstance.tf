provider "aws" {
    region = "us-east-1"
}

data "aws_ami" "amazon_linux" {
    most_recent = true
    owners = ["amazon"]

    filter {
      name = "name"
      values = "al2023-ami-*-x86_64"]
    }
}

resource "aws_instance" "exemplo1" {
    ami = data.aws_ami.amazon_linux.id
    instance_type = "t2.micro"

    tags = {
        Name = "exemploTerraform1"
    }
}