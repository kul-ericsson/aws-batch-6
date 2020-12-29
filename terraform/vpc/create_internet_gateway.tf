resource "aws_internet_gateway" "thinknyx_igw" {
  vpc_id = aws_vpc.thinknyx_vpc.id
  tags = {
    "Name" = var.Name
  }
}