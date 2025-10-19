resource "aws_instance" "terraform" {
  #for_each = var.instance
  for_each = toset(var.instance)
  ami = "ami-09c813fb71547fc4f"
  #instance_type = each.value
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_allsc.id]
  tags = {
      #Name = each.key
      Name = each.value
      Terraform = "true"
      }
}

resource "aws_security_group" "allow_allsc" {

    name = "allow_allsc"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  tags = {
    name = "allow_allsc"
  }

}