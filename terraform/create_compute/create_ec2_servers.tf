resource "aws_instance" "server_public" {
  ami = "ami-006493a8f627b96f9"
  instance_type = "t2.micro"
  key_name = "kul-ericsson-thinknyx"
  subnet_id = data.aws_subnet.public.id
  tags = {
    "Name" = "${var.Name}_${var.suffix}"
  }
}