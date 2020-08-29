
resource "aws_instance" "instance" {
  count = var.instance_count
  ami                  = var.ami_id
  instance_type        = var.instance_type
  key_name             = var.key_name
  vpc_security_group_ids = [ var.security_group_ids ]
  subnet_id = tolist(var.subnet_ids)[ count.index % length(var.subnet_ids) ]
  private_ip = var.instance_ip
  root_block_device {
    volume_type = "gp2"
    volume_size = var.instance_disk_size
  }
  ebs_block_device {
    device_name = "/dev/sdh"
    delete_on_termination = true
    volume_type = "gp2"
    volume_size = var.instance_disk_size
  }
  user_data = file(var.script_location)
  tags = {
    Name = format("%s-%d", var.instance_name,count.index)
    App = var.tag.app
    Tier = var.tag.tier
  }
}