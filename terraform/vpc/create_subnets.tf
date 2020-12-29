resource "aws_subnet" "thinknyx_subnet_1" {
  vpc_id = aws_vpc.thinknyx_vpc.id
  cidr_block = "10.10.10.0/24"
  availability_zone = "us-east-2a"
  tags = {
    "Name" = var.Name
  }
}
resource "aws_subnet" "thinknyx_subnet_2" {
  vpc_id = aws_vpc.thinknyx_vpc.id
  cidr_block = "10.10.20.0/24"
  availability_zone = "us-east-2b"
  tags = {
    "Name" = var.Name
  }
}
resource "aws_subnet" "thinknyx_subnet_3" {
  vpc_id = aws_vpc.thinknyx_vpc.id
  cidr_block = "10.10.30.0/24"
  availability_zone = "us-east-2c"
  tags = {
    "Name" = var.Name
  }
}