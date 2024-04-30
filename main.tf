provider "aws" {
  region = "ap-northeast-1"
}

/*
//VPC 생성
resource "aws_vpc" "vpc_test" {
  cidr_block = "10.0.0.0/16"
}
*/

//EC2 생성
resource "aws_instance" "EC2DemoInstance" {
  instance_type = "t2.micro"
  ami = var.aws_ami_id
}

variable "aws_ami_id" {
  default = "ami-0ab3794db9457b60a"
  description = "AMI id"
}

output "demo_instance_ip_address" {
  value = aws_instance.EC2DemoInstance.public_ip
  description = "public IP of demo instance"
}