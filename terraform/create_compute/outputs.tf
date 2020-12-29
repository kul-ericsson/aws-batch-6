output "public_server_ip"{
  value = aws_instance.server_public.public_ip
}