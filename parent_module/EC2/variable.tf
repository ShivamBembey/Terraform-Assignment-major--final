variable tags_for_EC2 {
    type = map(any)
}

variable "ami_id_EC2" {
  type = list(string)
}


variable "instance_type_EC2" {
  type = list(string)
}

variable "public_ip_address"{
    type = list(string)
}

variable "subnet_id_EC2" {
  type = list(string)
}

