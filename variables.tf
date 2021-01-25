variable "allocated_storage" {
    default = 25
    description = "Allocated storage of the MySQL DB"
}

variable "backup_retention_period" {
    default = 15
    description = "[backup_retention_period](https://registry.terraform.io/modules/terraform-aws-modules/rds/aws/latest#inputs:~:text=backup_retention_period)"
}

variable "family" {
    default = "mysql5.7"
    description = "[family](https://registry.terraform.io/modules/terraform-aws-modules/rds/aws/latest#inputs:~:text=family,-The)"
}

variable "mysql_port" {
    default = 3306
    description = "Port which MySQL will use to communicate with the ec2"
}

variable "mysql_version" {
    default = 5.7
    description = "MySQL version, for supported RDS MySQL versions, check [here](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MySQL.html)"
}

variable "option_group_name" {
    default = "default:mysql-5-7"
    description = "[option_group_name](https://registry.terraform.io/modules/terraform-aws-modules/rds/aws/latest#inputs:~:text=option_group_name)"
}

variable "instance_size" {
    default = "db.t3.micro"
    description = "Size of the MySQL instance"
}

variable "major_engine_version" {
    default = "5.7"
    description = "[major_engine_version](https://registry.terraform.io/modules/terraform-aws-modules/rds/aws/latest#inputs:~:text=major_engine_version,-Specifies)"
}

variable "stack_name" {
  default = "stack"
  description = "Name of the stack, helps delineate between different projects."
}

variable "subnet_ids" {
    type = list(string)
    description = "List of subnet IDs, requires two in different availability zones"
}

variable "tags" {
  type    = map(string)
  default = {}
  description = "Map of tags, will be added to the common tags local"
}

variable "username" {
  default = "admin"
  description = "Username of database master user"
}

variable "vpc_id" {
  type = string
  description = "VPC that will be used by terraform, this VPC is called via data only, terraform will not attempt to manage the existence of the VPC"
}