resource "mysql_database" "thinknyx_database" {
  name = "thinknyx_database"
}

resource "mysql_user" "thinknyx_user" {
  user = "kmayer"
  plaintext_password = "admin123"
  host = aws_instance.server_public.private_ip
}

resource "mysql_grant" "thinknyx_access" {
  user = mysql_user.thinknyx_user.user
  database = mysql_database.thinknyx_database.name
  host = mysql_user.thinknyx_user.host
  privileges = ["SELECT"]
}