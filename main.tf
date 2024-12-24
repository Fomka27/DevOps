provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source      = "./modules/vpc"
  cidr_block  = var.vpc_cidr
  name        = "my-vpc"
}

module "public_subnet" {
  source                  = "./modules/subnet"
  vpc_id                  = module.vpc.vpc_id
  cidr_block              = var.public_subnet_cidr
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = true
  name                    = "my-public-subnet"
}

module "private_subnet" {
  source                  = "./modules/subnet"
  vpc_id                  = module.vpc.vpc_id
  cidr_block              = var.private_subnet_cidr
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = false
  name                    = "my-private-subnet"
}

module "public_instance" {
  source         = "./modules/ec2"
  ami            = var.ami_id
  instance_type  = var.instance_type
  subnet_id      = module.public_subnet.subnet_id
  key_name       = var.key_name
  name           = "public-instance"
}

module "private_instance" {
  source         = "./modules/ec2"
  ami            = var.ami_id
  instance_type  = var.instance_type
  subnet_id      = module.private_subnet.subnet_id
  key_name       = var.key_name
  name           = "private-instance"
}
