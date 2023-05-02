resource "aws_instance" "test-ec2" {
    ami                 = var.ami_id
    instance_type       = var.instance_type
    security_groups     = [aws_security_group.ec2_security_group.id]
    subnet_id           = aws_subnet.public_subnet.id
    key_name            = var.key_pair_name
    associate_public_ip_address = true
    
tags = {
    name = "test"
    }
}
resource "aws_security_group" "ec2_security_group" {
  name = "ec2_sg"
  description = "Security Group for ec2 instance"
  vpc_id = aws_vpc.vpc-t_vpc.id

ingress {
    description = "Allow incoming SSH traffic from myip"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

 egress {
  description = "Allow all outgoing traffic to anywhere"
  from_port = 0
  to_port = 0
  protocol = "-1"
  cidr_blocks = ["0.0.0.0/0"]
}
}

