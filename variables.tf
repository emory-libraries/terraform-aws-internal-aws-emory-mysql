variable "mysql_port" {
    default = 3306
    description = "Port which mysql will use to communicate with the ec2"
}

variable "mysql_version" {
    default = 5.7
}

variable "mysql_instance_size" {
    default = "db.t3.micro"
    description = "Size of the MySQL instance"
}