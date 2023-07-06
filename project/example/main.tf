module "base-infra" {
  source      = "../"
  aws_region = var.aws_region
  environment = var.environment
  project_name = var.project_name
  cidr = var.cidr
  azs = var.azs
  private_subnets = var.private_subnets
  public_subnets = var.public_subnets
  single_nat_gateway = var.single_nat_gateway
}

