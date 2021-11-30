output "mysql_admin_password" {
    value = random_string.mysql_admin_password.result
    description = "MySQL admin password, not marked as sensitive so it will show in console output"
}

output "mysql_db_endpoint" {
    value = module.mysql_db.db_instance_endpoint
    description = "[db_instance_endpoint](https://registry.terraform.io/modules/terraform-aws-modules/rds/aws/latest#outputs:~:text=db_instance_endpoint)"
}

output "mysql_db_instance_id" {
     value = module.mysql_db.db_instance_id
     description = "[db_instance_id](https://registry.terraform.io/modules/terraform-aws-modules/rds/aws/latest#outputs:~:text=db_instance_id)"
}

output "mysql_client_security_group_id" {
    value = aws_security_group.db_client.id
    description = "Security group ID that needs to be attached to an EC2 to have access to the RDS"
}