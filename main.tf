provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "./modules/vpc"

  #  vpc_cidr_block = var.vpc_cidr_block
  #  vpc_name       = var.vpc_name
}

module "subnet" {
  source = "./modules/subnet"
  vpc_id = module.vpc.vpc_id
  subnet_cidr_blocks = var.subnet_cidr_blocks
}
