resource "random_string" "mysql_admin_password" {
    length = 10
    special = false
}

module "mysql_db" {
  source  = "terraform-aws-modules/rds/aws"

  identifier = "${local.namespace}-mysql-db"

  engine         = "mysql"
  engine_version = var.mysql_version
  major_engine_version = var.major_engine_version

  instance_class    = var.instance_size
  allocated_storage = var.allocated_storage
  
  name     = "mysql-db"
  username = var.username
  password = random_string.mysql_admin_password.result
  port     = var.mysql_port

  option_group_name       = var.option_group_name
  maintenance_window      = "Mon:00:00-Mon:03:00"
  backup_window           = "03:00-06:00"
  backup_retention_period = var.backup_retention_period
  copy_tags_to_snapshot   = true

  vpc_security_group_ids = [aws_security_group.db.id]
  subnet_ids = var.subnet_ids

  tags = local.common_tags
  family = var.family

  apply_immediately = true
  storage_encrypted = true
}