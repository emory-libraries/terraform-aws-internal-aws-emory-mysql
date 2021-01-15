variable "allocated_storage" {
    default = 25
    description = "Allocated storage of the MySQL DB"
}

variable "backup_retention_period" {
    default = 15
}

variable "family" {
    default = "mysql5.7"
}

variable "mysql_port" {
    default = 3306
    description = "Port which mysql will use to communicate with the ec2"
}

variable "mysql_version" {
    default = 5.7
}

variable "option_group_name" {
    default = "default:mysql-5-7"
}

variable "instance_size" {
    default = "db.t3.micro"
    description = "Size of the MySQL instance"
}


variable "stack_name" {
  default = "stack"
  description = "Name of the stack, helps delinate between different projects."
}

variable "subnet_ids" {
    type = list(string)
    description = "List of subnet IDs, requires two in different availablity zones"
}

variable "username" {
  default = "admin"
  description = "Username of database master user"
}