module "instances" {
  for_each  = var.component
  source    = "git::https://github.com/balusena/tf-module-app.git"
  component = each.key
  env       = var.env
  tags      = each.value["tags"]
}