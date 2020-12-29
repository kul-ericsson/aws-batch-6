provider "aws" {
  region = "us-east-2"
}
provider "mysql" {
  endpoint = ""
  username = ""
  password = ""
}

terraform {
  required_providers {
    mysql = {
      source = "terraform-providers/mysql"
    }
  }
}