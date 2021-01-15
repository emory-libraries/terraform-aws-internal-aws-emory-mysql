output "mysql_admin_password" {
    value = random_string.mysql_admin_password.result
}

output "mysql_db_endpoint" {
    value = module.mysql_db.this_db_instance_endpoint
}

output "mysql_db_instance_id" {
     value = module.mysql_db.this_db_instance_id
}

output "mysql_client_security_group_id" {
    value = aws_security_group.db_client.id
}