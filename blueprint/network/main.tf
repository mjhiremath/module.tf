resource "aws_vpc" "vpc-test" {
  cidr_block = var.vpc
}

resource "aws_subnet" "sub" {
  vpc_id = var.vpc-id
  cidr_block = var.sub
}

