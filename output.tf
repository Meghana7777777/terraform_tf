output "ins1-EC2ID" {
  description = "Print the ID of App Instance"
  value       = aws_instance.ins1.id
}

output "ins1-PrivateIP" {
  description = "Print the Private IP of App Instance"
  value       = aws_instance.ins1.private_ip
}

output "ins1-PublicIP" {
  description = "Print the Public IP of App Instance"
  value       = aws_instance.ins1.public_ip
}

output "ins2-EC2ID" {
  description = "Print the ID of lb Instance"
  value       = aws_instance.ins2.id
}

output "ins2-PrivateIP" {
  description = "Print the Private IP of lb Instance"
  value       = aws_instance.ins2.private_ip
}

output "ins2-PublicIP" {
  description = "Print the Public IP of lb Instance"
  value       = aws_instance.ins2.public_ip
}

output "ins1sg-ID" {
  description = "Print the App Security Groupd ID"
  value       = aws_security_group.ins1sg.id
}

output "ins2sg-ID" {
  description = "Print the LB Security Groupd ID"
  value       = aws_security_group.ins2sg.id
}
