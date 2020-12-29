resource "null_resource" "install_mysql_client" {
  provisioner "remote-exec" {
    connection {
      type = "ssh"
      user = "ubuntu"
      private_key = file("C:/training/ericsson/aws/kul-ericsson-thinknyx.pem")
      host = aws_instance.server_public.public_ip
    }
    inline = [
      "sudo apt-get update -y",
      "sudo apt-get install -y mysql-client"
    ]
  }
}

resource "null_resource" "copy_demo_sql_script" {
  provisioner "file" {
    connection {
      type = "ssh"
      user = "ubuntu"
      private_key = file("C:/training/ericsson/aws/kul-ericsson-thinknyx.pem")
      host = aws_instance.server_public.public_ip
    }
    source = "demo_sql_script.sql"
    destination = "/tmp/demo_sql_script.sql"
  }
}