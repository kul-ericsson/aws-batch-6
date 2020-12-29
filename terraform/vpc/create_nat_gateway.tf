resource "aws_eip" "thinknyx_eip" {
  tags = {
    "Name" = var.Name
  }
}
resource "aws_nat_gateway" "thinknyx_ngw" {
  allocation_id = aws_eip.thinknyx_eip.id
  subnet_id = aws_subnet.thinknyx_subnet_1.id
  tags = {
    "Name" = var.Name
  }
}