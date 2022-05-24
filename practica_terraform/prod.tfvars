ami_id = "ami-0cf6160d953e96b60"
tags = {
  Environment = "Prod"
  Name = "practica-uno"
}
instance_type = "t2.micro"
sg_name = "platzi-rules"
ingress_rules = [
    {
        from_port = "22"
        to_port = "22"
        protocol = "tcp"
        cidr_block = ["0.0.0.0/0"]
    },
    {
        from_port = "80"
        to_port = "80"
        protocol = "tcp"
        cidr_block = ["0.0.0.0/0"]
    }
]