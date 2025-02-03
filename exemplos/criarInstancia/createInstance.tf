provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "exemplo1" {
    ami = "ami-0c614dee691cbbf37"
    instance_type = "t2.micro"

    tags = {
        Name = "exemploTerraform1"
    }
}