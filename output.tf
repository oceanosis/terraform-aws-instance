
output "bastion_ip" {
  value = aws_instance.bastion.public_ip
}

output "bastion_dns" {
  value = aws_instance.bastion.public_dns
}