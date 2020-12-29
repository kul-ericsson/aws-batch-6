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
resource "aws_route_table" "thinknyx_rt_with_ngw" {
  vpc_id = aws_vpc.thinknyx_vpc.id
  tags = {
    "Name" = "${var.Name}_nat_route"
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.thinknyx_ngw.id
  }
}
resource "aws_route_table_association" "thinknyx_rt_ngw_association_subnet_2" {
  subnet_id = aws_subnet.thinknyx_subnet_2.id
  route_table_id = aws_route_table.thinknyx_rt_with_ngw.id
}
resource "aws_route_table_association" "thinknyx_rt_ngw_association_subnet_3" {
  subnet_id = aws_subnet.thinknyx_subnet_3.id
  route_table_id = aws_route_table.thinknyx_rt_with_ngw.id
}