
data "aws_ami" "latest-ubuntu" {
  most_recent = true
  owners = ["099720109477"] # Canonical

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "instance" {
  count = var.instance_count
  ami                  = data.aws_ami.latest-ubuntu.id
  instance_type        = var.instance_type
  key_name             = var.key_name
  vpc_security_group_ids = [ var.security_group_ids ]
  subnet_id = var.subnet_ids
  private_ip = var.master_instance_ips[ count.index]
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
  }
}