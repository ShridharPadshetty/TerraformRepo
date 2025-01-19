resource "aws_subnet" "main" {
  count = length(var.subnet_cidr_blocks)

  vpc_id            = var.vpc_id
  cidr_block        = var.subnet_cidr_blocks[count.index]
  availability_zone = element(data.aws_availability_zones.available.names, count.index)

  tags = {
    Name = "my-subnet-${count.index + 1}"
  }
}

data "aws_availability_zones" "available" {}

