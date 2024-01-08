env = "prod"

component = {

  frontend   = {
    tags = { Monitor = "true", env = "prod" }
  }
  mongodb    = {
    tags = { env = "prod" }
  }
  catalogue  = {
    tags = { Monitor = "true", env = "prod" }
  }
  redis      = {
    tags = { env = "prod" }
  }
  user       = {
    tags = { Monitor = "true", env = "prod" }
  }
  cart       = {
    tags = { Monitor = "true", env = "prod" }
  }
  mysql      = {
    tags = { env = "prod" }
  }
  shipping   = {
    tags = { Monitor = "true", env = "prod" }
  }
  rabbitmq   = {
    tags = { env = "prod" }
  }
  payment    = {
    tags = { Monitor = "true", env = "prod" }
  }
  dispatch   = {
    tags = { env = "prod" }
  }

}

tags = {
  company_name = "XYZ Tech"
  business = "ecommerce"
  business_unit = "retail"
  cost_center = "322"
  project_name = "roboshop"
}

vpc = {
  main = {
    cidr_block = "10.20.0.0/16"
  }
}