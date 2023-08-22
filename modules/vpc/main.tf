module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.name
  cidr = var.vpc_cidr

  azs             = var.az_list
  private_subnets = var.private_subnets_list
  public_subnets  = var.public_subnets_list

  enable_nat_gateway = var.enable_nat_gateway
  enable_vpn_gateway = false

  tags = {
    Terraform = "true"
    Environment = var.env
  }
}