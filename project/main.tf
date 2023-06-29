{% if vpc_enable %}
########## VPC module ##########
module "vpc" {
  source          = "git::https://github.com/ingdamiangonzalez/startup-vpc-module.git?ref=0.1.1"
  vpc_name        = var.vpc_name
  vpc_cidr        = var.vpc_cidr
  azs             = var.azs             # ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  private_subnets = var.private_subnets # ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = var.public_subnets  #["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}
########## /VPC module ##########
{% endif %}
