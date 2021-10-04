# This Terraform deploy AWS RDS MySQL.

This Terraform:
* Create Sub-net.
* Configure rule of securety group.
* Create RDS MySQL

### Prerequisites on your machine
* Docker
* Make

### Credential for AWS
Rename the env.example file to .env and add your AWS credentials.
```shell
# AWS environment
AWS_ACCESS_KEY_ID =
AWS_SECRET_ACCESS_KEY =
```

### Usage
First set up a few variables for your environment in file "variables.tf".

| Name | Description | Type | Default |
|------|-------------|:----:|:-----:|
| aws\_regionp | Region to AWS. | string | `"us-west-1"` |
| storage | The allocated storage. | number | `"20"` |
| storage\_type | The type of the storage. | string | `"gp2"` |
| engine | The database engine. | string | `"mysql"` |
| engine\_version | The RDS instance class. | string | `"db.t2.micro"` |
| name | The database name. | string | `"wordpress"` |
| username | Username of the database | string | `"admin"` |
| password | Password of the database. | string | `"123@mudar"` |
| port | The database port. | number | `"3306"` |
| identifier | The name of the RDS instance. | string | `"database-rapadura"` |
| parameter\_group\_name | Name of the DB parameter group to associate. | string | `"default.mysql5.7"` |
| snapshot | Skip snapshot. | string | `"true"` |
| ingress\_ports | List of ingress ports. | number | `"3306"` |
| egress\_ports | List of egress ports. | number | `"3306"` |
| default\_tags | Default tags name. | map | `"Key: value"` |

For help, run the following commands:

```make
make help: ## Run make help 
terraform-init: ## Run terraform init to download all necessary plugins
terraform-plan: ## Exec a terraform plan and puts it on a file called plano
terraform-apply: ## Uses plano to apply the changes on AWS.
terraform-destroy: ## Destroy all resources created by the terraform file in this repo.
```