env = "dev"

tags = {
  company_name  = "XYZ Tech"
  business      = "ecommerce"
  business_unit = "retail"
  cost_center   = "322"
  project_name  = "roboshop"
}

vpc = {
  main = {
    cidr_block            = "10.0.0.0/16"
    subnets =  {
      web    = { cidr_block = ["10.0.0.0/24", "10.0.1.0/24"] }
      app    = { cidr_block = ["10.0.2.0/24", "10.0.3.0/24"] }
      db     = { cidr_block = ["10.0.4.0/24", "10.0.5.0/24"] }
      public = { cidr_block = ["10.0.6.0/24", "10.0.7.0/24"] }
    }
  }
}

default_vpc_id = "vpc-0b8a33174d2af981b"
default_vpc_rt = "rtb-079b2ad9d6a2402d0"
allow_ssh_cidr = ["172.31.40.26/32"]
zone_id        = "Z09157091J32F5PJ5K67Y"
kms_key_id     = "62bb771a-341f-4c82-b8d9-473959a4a166"
kms_key_arn    = "arn:aws:kms:us-east-1:828448425071:key/62bb771a-341f-4c82-b8d9-473959a4a166"

rabbitmq = {
  main = {
    instance_type = "t3.small"
    component     = "rabbitmq"
  }
}

rds = {
  main = {
    component        = "mysql"
    engine           = "aurora-mysql"
    engine_version   = "5.7.mysql_aurora.2.11.3"
    db_name          = "dummy"
    instance_count   = 1
    instance_class   = "db.t3.small"
  }
}
