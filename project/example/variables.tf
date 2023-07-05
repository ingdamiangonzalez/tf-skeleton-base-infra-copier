variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "ecs_container_insights" {
  description = "Enable ECS container insights"
  type        = bool
}

variable "environment" {
  description = "Environment"
  type        = string
}

variable "one_nat_gateway_per_az" {
  description = "One NAT gateway per AZ"
  type        = bool
}

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "vpc_enable_ecr_endpoints" {
  description = "Enable ECR endpoints"
  type        = bool
}

variable "vpc_enable_logs_endpoint" {
  description = "Enable CloudWatch Logs endpoint"
  type        = bool
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
}

variable "vpc_private_subnets" {
  description = "VPC private subnets"
  type        = list(string)
}

variable "vpc_public_subnets" {
  description = "VPC public subnets"
  type        = list(string)
}
