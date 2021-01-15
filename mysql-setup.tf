resource "aws_security_group" "db_client" {
  name        = "${local.namespace}-mysql-client"
  description = "MYSQL Client Security Group"
  vpc_id      = var.vpc_id
  tags        = local.common_tags
}

resource "aws_security_group" "db" {
  name        = "${local.namespace}-db"
  description = "MYSQL Security Group"
  vpc_id      = var.vpc_id
  tags        = local.common_tags
}

resource "aws_security_group_rule" "db_client_access" {
  security_group_id        = aws_security_group.db.id
  type                     = "ingress"
  from_port                = var.mysql_port
  to_port                  = var.mysql_port
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.db_client.id
}