locals {
  common_name = lower("${var.project_name}-${var.environment}")
  tags = {
    Project   = var.project_name
    Environment = var.environment
    Terraform = "true"
  }
}

terraform {
  backend "s3" {
    bucket = {{s3_backend_tf}}}
    key    = "terraform.tfstate"
    region = var.aws_region
  }
}


module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = local.common_name
  cidr = var.cidr

  azs             = var.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway = true
  single_nat_gateway = var.single_nat_gateway

  tags = local.tags
}

module "ecs_cluster" {
  source = "terraform-aws-modules/ecs/aws//modules/cluster"

  cluster_name = local.common_name
  fargate_capacity_providers = {
    FARGATE = {
      default_capacity_provider_strategy = {
        weight = 50
      }
    }
    FARGATE_SPOT = {
      default_capacity_provider_strategy = {
        weight = 50
      }
    }
  }

  tags = local.tags
}