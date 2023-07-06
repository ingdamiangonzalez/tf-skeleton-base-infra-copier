output "vpc_id" {
  value = module.vpc.vpc_id  
}

output "vpc_private_subnets" {
  value = module.vpc.private_subnets
}

output "vpc_public_subnets" {
  value = module.vpc.public_subnets
}

output "vpc_arn" {
  value = module.vpc.vpc_arn
  
}

output "ecs_cluster_id" {
  value = module.ecs_cluster.id 
}

output "ecs_cluster_arn" {
  value = module.ecs_cluster.arn
}

output "ecs_cluster_name" {
  value = module.ecs_cluster.name
}