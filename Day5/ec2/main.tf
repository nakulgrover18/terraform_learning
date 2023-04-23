resource "aws_instance" "testing" {
    ami = "ami-02396cdd13e9a1257"
    instance_type = var.ec2_instance_type
    tags = {
    Name =           "ec2-terraform"
  }
}


/*
resource "aws_instance" "testing2" {
    ami = "ami-02396cdd13e9a1257"
    instance_type = var.ec2_instance_type
    tags = {
    Name =           "ec2-terraform"
  }
}
*/