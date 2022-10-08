## VPC
vpc_cidr_block = "10.100.0.0/16"
subnets = {
  public = {
    name        = "public"
    subnet_cidr = ["10.100.0.0/24", "10.100.1.0/24"]
    igw         = true
  }
  apps = {
    name        = "apps"
    subnet_cidr = ["10.100.2.0/24", "10.100.3.0/24"]
    ngw         = true
  }
  db = {
    name        = "db"
    subnet_cidr = ["10.100.4.0/24", "10.100.5.0/24"]
    ngw         = true
  }
}

env                    = "dev"
AZ                     = ["us-east-1a", "us-east-1b"]
default_vpc_id         = "vpc-010712ed9cba8d884"
default_vpc_cidr       = "172.31.0.0/16"
default_route_table_id = "rtb-00985f1d2ec4265dd"

## DOCDB
docdb_engine_version          = "4.0.0"
docdb_cluster_instances_count = 1
docdb_instance_class          = "db.t3.medium"

## RDS
rds_engine_version          = "5.7.mysql_aurora.2.10.2"
rds_cluster_instances_count = 1
rds_instance_class          = "db.t3.small"

## Elasticache
elasticache_instance_class          = "cache.t3.micro"
elasticache_cluster_instances_count = 1
elasticache_engine_version          = "6.2"

#RabbitMQ
rabbitmq_instance_type = "t3.micro"

WORKSTATION_IP = "172.31.7.121/32"

PUBLIC_DNS_RECORD = "dev.rahulsdevops.online"