
output "public_dns" {
  value = aws_instance.instance.public_dns
}

output "private_ip" {
  value = aws_instance.instance.private_ip
}