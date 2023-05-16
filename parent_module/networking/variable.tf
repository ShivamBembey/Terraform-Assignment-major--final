variable tags_groupA {
    type = map(any)

}

variable "cidr_block_private_subnet" {
    type = string
}

variable "cidr_block_public_subnet" {
  type = string
}

variable "cidr_block_vpc" {
  type = string
}