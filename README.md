# terraform-aws-internal-aws-emory-mysql

Module to build out a mysql database in aws@emory

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| allocated\_storage | Allocated storage of the MySQL DB | `number` | `25` | no |
| backup\_retention\_period | [backup\_retention\_period](https://registry.terraform.io/modules/terraform-aws-modules/rds/aws/latest#inputs:~:text=backup_retention_period) | `number` | `15` | no |
| family | [family](https://registry.terraform.io/modules/terraform-aws-modules/rds/aws/latest#inputs:~:text=family,-The) | `string` | `"mysql5.7"` | no |
| instance\_size | Size of the MySQL instance | `string` | `"db.t3.micro"` | no |
| major\_engine\_version | [major\_engine\_version](https://registry.terraform.io/modules/terraform-aws-modules/rds/aws/latest#inputs:~:text=major_engine_version,-Specifies) | `string` | `"5.7"` | no |
| mysql\_port | Port which MySQL will use to communicate with the ec2 | `number` | `3306` | no |
| mysql\_version | MySQL version, for supported RDS MySQL versions, check [here](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MySQL.html) | `number` | `5.7` | no |
| option\_group\_name | [option\_group\_name](https://registry.terraform.io/modules/terraform-aws-modules/rds/aws/latest#inputs:~:text=option_group_name) | `string` | `"default:mysql-5-7"` | no |
| stack\_name | Name of the stack, helps delineate between different projects. | `string` | `"stack"` | no |
| subnet\_ids | List of subnet IDs, requires two in different availability zones | `list(string)` | n/a | yes |
| tags | Map of tags, will be added to the common tags local | `map(string)` | `{}` | no |
| username | Username of database master user | `string` | `"admin"` | no |
| vpc\_id | VPC that will be used by terraform, this VPC is called via data only, terraform will not attempt to manage the existence of the VPC | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| mysql\_admin\_password | MySQL admin password, not marked as sensitive so it will show in console output |
| mysql\_client\_security\_group\_id | Security group ID that needs to be attached to an EC2 to have access to the RDS |
| mysql\_db\_endpoint | [db\_instance\_endpoint](https://registry.terraform.io/modules/terraform-aws-modules/rds/aws/latest#outputs:~:text=db_instance_endpoint) |
| mysql\_db\_instance\_id | [db\_instance\_id](https://registry.terraform.io/modules/terraform-aws-modules/rds/aws/latest#outputs:~:text=db_instance_id) |
