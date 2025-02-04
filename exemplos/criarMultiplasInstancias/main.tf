resource "aws_instance" "InstanciaTeste" {
    count = 3
    ami = "ami-0c614dee691cbbf37"
    instance_type = "t2.micro"

    tags = {
        Name = "demo-${count.index}"
    }
}