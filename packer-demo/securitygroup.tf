resource "aws_security_group" "tf-packer-demo-instance" {
  vpc_id = "${aws_vpc.main.id}"
  name = "allow-ssh"
  description = "security group that allows ssh and all egress traffic"
  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["185.100.71.242/32"]
  } 
tags = {
    Name = "tf-packer-demo-instance"
  }
}

