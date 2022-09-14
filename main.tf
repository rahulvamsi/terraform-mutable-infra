module "vpc" {
  source                 = "./vendor/modules/vpc/"
  cidr_block             = var.vpc_cidr_block
  subnets                = var.subnets
  env                    = var.env
  AZ                     = var.AZ
  default_vpc_id         = var.default_vpc_id
  default_vpc_cidr       = var.default_vpc_cidr
  default_route_table_id = var.default_route_table_id
}

//module "docdb" {
//  source = "./vendor/modules/docdb/"
//  env    = var.env
//  engine_version = var.engine_version
//}

locals {
  apps_subnets_ids = module.vpc.out["apps"].subnet_ids
}

output "out" {
  value = local.apps_subnets_ids
}
