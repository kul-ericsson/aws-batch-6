resource "aws_internet_gateway" "thinknyx_igw" {
  vpc_id = aws_vpc.thinknyx_vpc.id
  tags = {
    "Name" = var.Name
  }
}

resource "aws_route_table" "thinknyx_rt_with_igw" {
  vpc_id = aws_vpc.thinknyx_vpc.id
  tags = {
    "Name" = var.Name
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.thinknyx_igw.id
  }
}