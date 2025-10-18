variable "instances" {
    default = ["mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend" ]
}

variable "zone_id" {
  default = "Z09552593JUGZ1EDVVGFV"
}

variable "domain_name" {
    default = "purini.shop"
}
