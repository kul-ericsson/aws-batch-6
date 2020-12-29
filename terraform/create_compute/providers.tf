provider "aws" {
  region = "us-east-2"
}
provider "mysql" {
  endpoint = aws_db_instance.thinknyx_db.endpoint
  username = aws_db_instance.thinknyx_db.username
  password = aws_db_instance.thinknyx_db.password
}

terraform {
  required_providers {
    mysql = {
      source = "terraform-providers/mysql"
    }
  }
}