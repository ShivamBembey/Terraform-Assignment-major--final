# Subnet configurations
resource "aws_subnet" "groupA_private_subnet" {
  vpc_id            = aws_vpc.groupA_vpc.id
  cidr_block        = var.cidr_block_private_subnet
  availability_zone = "us-east-1a"

  tags = var.tags_groupA
}

resource "aws_subnet" "groupA_public_subnet" {
  vpc_id            = aws_vpc.groupA_vpc.id
  cidr_block        = var.cidr_block_public_subnet
  availability_zone = "us-east-1a"

  tags = var.tags_groupA
}
