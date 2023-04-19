resource "aws_instance" "ins1" {
  ami                    = var.ami_id
  instance_type          = var.inst_type
  key_name               = var.key_name
  vpc_security_group_ids = ["${aws_security_group.ins1sg.id}"]
  subnet_id              = var.subnet_id

  tags = {
    Name = "dev-1"
  }
}



resource "aws_instance" "ins2" {
  ami                    = var.ubuntu_ami_id
  instance_type          = var.inst_type
  key_name               = var.key_name
  vpc_security_group_ids = ["${aws_security_group.ins2sg.id}"]
  subnet_id              = var.subnet_id

  tags = {
    Name = "dev-2"
  }
}


resource "aws_security_group" "ins2sg" {
  vpc_id      =  var.vpc_id
  name = var.ins2sg_name
  description = "security group that allows ssh and all egress traffic"
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["3.221.51.151/32"]
  }
    ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = var.ins2sg_name
  }
}


resource "aws_security_group" "ins1sg" {
  vpc_id      =  var.vpc_id
  name = var.ins1sg_name
  description = "security group that allows ssh and all egress traffic"
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["3.221.51.151/32"]
  }

   ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    security_groups = ["${aws_security_group.ins2sg.id}"]
  }
   ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    security_groups = ["${aws_security_group.ins2sg.id}"]
  }

  tags = {
    Name = var.ins1sg_name
  }
}