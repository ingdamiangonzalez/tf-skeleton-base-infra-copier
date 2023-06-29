{% if vpc_enable %}
vpc_name        = "{{ vpc_name }}-dev"
vpc_cidr        = "{{ vpc_cidr }}"
azs             = {{ availability_zones }}
private_subnets = {{ private_subnets }}
public_subnets  = {{ public_subnets }}
{% endif %}
