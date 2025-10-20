resource "aws_security_group" "allow_allsc" {

    name = "allow_allsc"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]

  }

   dynamic "ingress" {
    for_each = toset(var.ingress_ports)
    content{
        from_port        = ingress.value # here ingress is special key word
        to_port          = ingress.value
        protocol         = "tcp" # -1 means all protocols
        cidr_blocks      = ["0.0.0.0/0"] # internet
     }
   }

  tags = {
    name = "allow_allsc"
  }

}