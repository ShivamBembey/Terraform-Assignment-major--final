# VPC configuration
resource "aws_vpc" "groupA_vpc" {
  
  cidr_block = var.cidr_block_vpc

  tags = var.tags_groupA
}