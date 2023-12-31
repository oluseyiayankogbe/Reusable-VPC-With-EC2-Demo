#0. Create RDS

resource "aws_db_instance" "database" {
  allocated_storage      = 20
  engine                 = var.engine
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  db_name                = var.db_name
  username               = var.username
  password               = var.password
  parameter_group_name   = var.parameter_group_name
  skip_final_snapshot    = true
  vpc_security_group_ids = ["${aws_security_group.sg.id}"]
  db_subnet_group_name   = var.db_subnet_group_name


}


