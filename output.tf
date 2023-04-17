output "practice-2-instance-EC2ID" {
  description = "Print the ID of App Instance"
  value       = aws_instance.practice-2-instance.id
}

output "practice-2-instance-PrivateIP" {
  description = "Print the Private IP of App Instance"
  value       = aws_instance.practice-2-instance.private_ip
}

output "practice-2-instance-PublicIP" {
  description = "Print the Public IP of App Instance"
  value       = aws_instance.practice-2-instance.public_ip
}
