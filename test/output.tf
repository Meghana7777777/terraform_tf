output "vpc_id" {
  value = aws_vpc.vpc-t_vpc.id
}

output "public_subnet_id" {
value = aws_subnet.public_subnet.id
}

output "internet_gateway_id" {
  value = aws_internet_gateway.Igw.id
}

output "public_ip_test-ec2" {
  value = aws_instance.test-ec2.public_ip
}

output "private_ip_test-ec2" {
  value = aws_instance.test-ec2.private_ip
}

output "instance_id_test-ec2" {
  value = aws_instance.test-ec2.id
}




