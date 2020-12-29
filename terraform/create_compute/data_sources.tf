data "aws_vpc" "vpc" {
  filter {
    name = "tag:Name"
    values = [var.Name]
  }
}
data "aws_subnet" "public" {
  vpc_id = data.aws_vpc.vpc.id
  availability_zone = "us-east-2a"
}
data "aws_subnet" "private_2" {
  vpc_id = data.aws_vpc.vpc.id
  availability_zone = "us-east-2b"
}
data "aws_subnet" "private_3" {
  vpc_id = data.aws_vpc.vpc.id
  availability_zone = "us-east-2c"
}
data "aws_subnet_ids" "private" {
  vpc_id = data.aws_vpc.vpc.id
  filter {
    name = "tag:Name"
    values = [var.Name]
  }
}
data "aws_security_group" "vpc_default_sg" {
  vpc_id = data.aws_vpc.vpc.id
  name = "default"
}