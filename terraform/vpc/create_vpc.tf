resource "aws_vpc" "thinknyx_vpc" {
  cidr_block = var.cidr_block
  instance_tenancy = "default"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    "Name" = var.Name
  }
}