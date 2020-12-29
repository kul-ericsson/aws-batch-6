resource "aws_internet_gateway" "thinknyx_igw" {
  vpc_id = aws_vpc.thinknyx_vpc.id
  tags = {
    "Name" = var.Name
  }
}

resource "aws_route_table" "thinknyx_rt_with_igw" {
  vpc_id = aws_vpc.thinknyx_vpc.id
  tags = {
    "Name" = "${var.Name}_public_route"
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.thinknyx_igw.id
  }
}

resource "aws_route_table_association" "thinknyx_rt_igw_association" {
  subnet_id = aws_subnet.thinknyx_subnet_1.id
  route_table_id = aws_route_table.thinknyx_rt_with_igw.id
}