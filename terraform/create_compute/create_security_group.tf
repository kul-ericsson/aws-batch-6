resource "aws_security_group" "thinknyx_sg" {
  vpc_id = data.aws_vpc.vpc.id
  description = "Managed by Terraform"
  name = "${var.Name}_${var.suffix}"
  tags = {
    "Name" = "${var.Name}_${var.suffix}"
  }
  ingress {
    cidr_blocks = [ "0.0.0.0/0"]
    description = "SSH Port"
    protocol = "tcp"
    from_port = 22
    to_port = 22
  }
  egress {
    cidr_blocks = [ "0.0.0.0/0"]
    description = "All Open"
    protocol = "-1"
    from_port = 0
    to_port = 0
  }
}