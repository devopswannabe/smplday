provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "this" {
  ami                         = "ami-026c8acd92718196b"
  instance_type               = "t2.micro"
  vpc_security_group_ids      = ["sg-0f6e48a71c428f2ec"]
  subnet_id                   = "subnet-b14eb5ea"
  associate_public_ip_address = true
  key_name                    = "demo"

  tags = {
    Name = "DemoTerraform"
  }
}
