variable "project_name" {
  description = "Project name"
  type        = string
}

variable "azs" {
  description = "Availability zones"
  type        = list(string)
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default = "us-east-1"
}

variable "environment" {
  description = "Environment"
  type        = string
}

variable "cidr" {
  description = "VPC CIDR"
  type        = string
}

variable "private_subnets" {
  description = "VPC private subnets"
  type        = list(string)
}

variable "public_subnets" {
  description = "VPC public subnets"
  type        = list(string)
}

variable "single_nat_gateway" {
  description = "Single NAT Gateway"
  type        = bool
  default     = true  
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}