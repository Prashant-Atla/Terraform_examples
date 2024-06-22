provider "aws" {
    region = "us-west-2"
    access_key = "this_is_private"
    secret_key =  "this_is_also_private"
}

resource "aws_instance" "web" {
    ami = "ami-023e152801ee4846a"
    instance_type = "t3.micro"
}