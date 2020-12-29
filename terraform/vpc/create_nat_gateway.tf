resource "aws_eip" "thinknyx_eip" {
  tags = {
    "Name" = var.Name
  }
}