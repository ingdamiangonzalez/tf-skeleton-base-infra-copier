{% if vpc_enable %}
########## VPC module ##########
module "vpc" {
  source          = "git::https://github.com/ingdamiangonzalez/startup-base-infrastructure-module.git?ref=0.1.2"
  aws_region = var.aws_region
  ecs_container_insights = var.ecs_container_insights
  environment = var.environment
  one_nat_gateway_per_az = var.one_nat_gateway_per_az
  project_name = var.project_name
  vpc_cidr = var.vpc_cidr
  vpc_enable_ecr_endpoints = var.vpc_enable_ecr_endpoints
  vpc_enable_logs_endpoint = var.vpc_enable_logs_endpoint
  vpc_private_subnets = var.vpc_private_subnets
  vpc_public_subnets = var.vpc_public_subnets
}
########## /VPC module ##########
{% endif %}