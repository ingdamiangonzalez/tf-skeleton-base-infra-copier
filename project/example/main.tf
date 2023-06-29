module "vpc" {
  source          = "../"
  vpc_name        = var.vpc_name
  vpc_cidr        = var.vpc_cidr
  azs             = var.azs
  private_subnets = var.private_subnets # ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = var.public_subnets  # ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

