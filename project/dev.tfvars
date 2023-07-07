environment = "dev"
project_name = "{{project_name}}"
cidr = "{{cidr}}"
azs = {{azs}}
private_subnets = {{private_subnets}}
public_subnets = {{public_subnets}}
single_nat_gateway ="{% if single_nat_gateway == 'True' %}true{% else %}false{% endif %}"
region = "{{aws_region}}"
team = "{{team}}"