resource "aws_instance" "practice-aws" {
  ami                    = "ami-0bde1eb2c18cb2abe"
  instance_type          = "t2.micro"
  key_name               = "practice-key"
  subnet_id              = "subnet-0765f6f25f4c6ab5a"

  tags = {
    Name = "practice-instance"
    Environment = "practice"
  }
}
