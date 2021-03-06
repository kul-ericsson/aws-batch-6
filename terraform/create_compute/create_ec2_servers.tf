resource "aws_instance" "server_public" {
  ami = "ami-006493a8f627b96f9"
  instance_type = "t2.micro"
  key_name = "kul-ericsson-thinknyx"
  subnet_id = data.aws_subnet.public.id
  tags = {
    "Name" = "${var.Name}_${var.suffix}"
  }
  vpc_security_group_ids = [ aws_security_group.thinknyx_sg.id, data.aws_security_group.vpc_default_sg.id ]
}
resource "aws_instance" "server_private" {
  for_each = data.aws_subnet_ids.private.ids
  ami = "ami-006493a8f627b96f9"
  instance_type = "t2.micro"
  key_name = "kul-ericsson-thinknyx"
  subnet_id = each.value
  tags = {
    "Name" = "${var.Name}_${var.suffix}"
  }
}