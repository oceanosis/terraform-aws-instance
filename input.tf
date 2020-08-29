
variable "AWS_REGION" {
  default = "eu-west-2"
}
variable "PATH_TO_PRIVATE_KEY" {
  default = "automation"
}
variable "PATH_TO_PUBLIC_KEY" {
  default = "automation.pub"
}
variable "ami_id" {
  default = ""
}
variable "instance_type" {
  default = "t2.micro"
}

variable "instance_count" {
  default     = 1
}

variable "az" {
  default = "eu-west-2a"
}
variable "availability_zone_names" {
  type    = list(string)
  default = ["eu-west-2a","eu-west-2b","eu-west-2c"]
}
variable "trusted_ip_range" {
  default = "0.0.0.0/0"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "master_instance_ips" {
  default     = ["10.0.4.11","10.0.4.12","10.0.4.13"]
}

variable "worker_instance_ips" {
  default     = ["10.0.4.101","10.0.4.102","10.0.4.103"]
}

variable "script_location" {}

variable "instance_disk_size" {
  default = 20
}

variable "instance_name" {}

variable "subnet_ids" {}

variable "security_group_ids" {}

