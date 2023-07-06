locals {
  common_name = lower("${var.project_name}-${var.environment}")
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

  tags = {
    Project   = var.project_name
    Environment = var.environment
    Terraform = "true"
  }
}


module "ecs_cluster" {
  source = "terraform-aws-modules/ecs/aws//modules/cluster"

  cluster_name = local.common_name

  cluster_configuration = {
    execute_command_configuration = {
      logging = "OVERRIDE"
      log_configuration = {
        cloud_watch_log_group_name = "/aws/ecs/ecs-cluster"
      }
    }
  }

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

  tags = {
    Project   = var.project_name
    Environment = var.environment
    Terraform = "true"
  }
}