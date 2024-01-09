module "vpc" {
  source      = "git::https://github.com/balusena/tf-module-vpc.git"
  for_each    = var.vpc
  cidr_block  = each.value["cidr_block"]
  subnets     = each.value["subnets"]

  env  = var.env
  tags = var.tags
  default_vpc_id = var.default_vpc_id
}

module "app_server" {
  source = "git::https://github.com/balusena/tf-module-app.git"
  env       = var.env
  tags      = var.tags
  component = "test"
#  subnet_id = module.vpc["subnet_ids"]["app"]["subnets_ids"][0]
  subnet_id = lookup(lookup(lookup(lookup(module.vpc, "main", null), "subnet_ids", null), "app", null), "subnet_ids", null)[0]
  vpc_id = lookup(lookup(module.vpc, "main", null), "vpc_id", null)
}

