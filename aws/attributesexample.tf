provider "aws"{
    region = "us-east-1"
    access_key = ""
    secret_key = ""
}

resource "aws_eip" "lb" {
  domain   = "vpc"
}
#for outputing the value we can use this 
#the identiier of resource block are aws_eip.lb
output "public-ip" {
  value = aws_eip.lb.public_ip
}

resource "aws_instance" "web" {
  ami           = "ami-0440d3b780d96b29d"
  instance_type = "t2.micro"
}