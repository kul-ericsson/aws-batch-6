output "public_server_ip"{
  value = aws_instance.server_public.public_ip
}
output "mysql_address"{
  value = aws_db_instance.thinknyx_db.address
} 