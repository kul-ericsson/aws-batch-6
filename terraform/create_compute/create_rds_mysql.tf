resource "aws_db_subnet_group" "thinknyx_db_subnet_group" {
  name = "${var.Name}-${var.suffix}"
  subnet_ids = [ data.aws_subnet.public.id, data.aws_subnet.private_2.id, data.aws_subnet.private_3.id ]
}
resource "aws_db_instance" "thinknyx_db" {
  engine = "mysql"
  engine_version = "8.0.20"
  instance_class = "db.t2.micro"
  identifier = "${var.Name}-${var.suffix}"
  storage_type = "gp2"
  allocated_storage = 10
  availability_zone = data.aws_subnet.public.availability_zone
  publicly_accessible = true
  db_subnet_group_name = aws_db_subnet_group.thinknyx_db_subnet_group.id
  vpc_security_group_ids = [ aws_security_group.thinknyx_sg.id, data.aws_security_group.vpc_default_sg.id ]
  name = var.Name
  username = "admin"
  password = "admin123"
  skip_final_snapshot = true
}