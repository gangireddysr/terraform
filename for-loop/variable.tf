variable "instance" {
    #default = ["mongodb", "redis"]
    default = ["mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend" ]
    # default = {
    #      mongodb = "t3.micro"
    #      redis = "t3.micro"
    #      mysql = "t3.small"
    #  }
    # default = {
    #      mongodb = {
    #       instance_type="t3.micro"
    #       ami="ami-id"
    #      }
    #      #redis = "t3.micro"
    #      #mysql = "t3.small"
    #  }
}

variable "zone_id" {
  default = "Z09552593JUGZ1EDVVGFV"
}

variable "domain_name" {
    default = "purini.shop"
}
