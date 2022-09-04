provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "terraform_ass1" {
    count = 20 #creating twenty identical files
    ami = "ami-052efd3df9dad4825"
    instance_type = "t2.micro"

    tags= {
        Name = "terraform-ass-${count.index}"
    }
}