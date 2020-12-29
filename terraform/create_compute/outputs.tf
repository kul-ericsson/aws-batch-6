output "public_server_ip"{
  value = aws_instance.server_public.public_ip
}
output "mysql_address"{
  value = aws_db_instance.thinknyx_db.address
}
output private_server_ips {
  description = "IDs of EC2 instances"
  value       = { for p in (data.aws_subnet_ids.private.ids) : p => aws_instance.server_private[p].private_ip }
}