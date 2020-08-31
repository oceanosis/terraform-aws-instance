
variable "AWS_REGION" {
  default = "eu-west-2"
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

variable "instance_disk_size" {
  default = 20
}

variable "instance_name" {}

variable "subnet_ids" {}

variable "security_group_ids" {}

variable "tag" {
  type = map
  default =  {
    app : ""
    tier : ""
  }
}

variable "private_ip" {
  type    = list(string)
  default = []
}

variable "key_name" {}

variable "ami_id" {
}

variable "script_location" {
  default = "/bin/bash"
}