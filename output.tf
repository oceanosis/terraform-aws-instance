
output "private_ip" {
  value = aws_instance.instance.*.private_ip
}


output "instance_id" {
  value = aws_instance.instance.*.id
}