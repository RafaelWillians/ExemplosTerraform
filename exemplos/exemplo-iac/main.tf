provider "aws" {
    profile = "default"
    region = "us-east-1"
}

resource "aws instance" "app server" {
    ami = "ami-123"
    instance_type = "t2.micro"

    tags = {
        Name = "App Server1"
    }
}