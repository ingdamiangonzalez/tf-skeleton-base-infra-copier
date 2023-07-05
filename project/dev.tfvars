{% if vpc_enable %}
aws_region = {{aws_region}}
ecs_container_insights = {{ecs_container_insights}}
environment = "dev"
one_nat_gateway_per_az = {{one_nat_gateway_per_az}}
project_name = {{project_name}}
vpc_cidr = {{vpc_cidr}}
vpc_enable_ecr_endpoints = {{vpc_enable_ecr_endpoints}}
vpc_enable_logs_endpoint = {{vpc_enable_logs_endpoint}}
vpc_private_subnets = {{vpc_private_subnets}}
vpc_public_subnets = {{vpc_public_subnets}}
{% endif %}
