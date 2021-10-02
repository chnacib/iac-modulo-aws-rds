####  The variables for backend ####
variable "aws_region" {
  default     = "us-west-1"
  description = "Region of Amazon AWS"
}

#### The variables for RDS
variable "storage" {
  type        = number
  default     = 20
  description = "The allocated storage"
}

variable "storage_type" {
  type        = string
  default     = "gp2"
  description = "type of the storage"
}

variable "engine" {
  type        = string
  default     = "mysql"
  description = "The database engine"
}

variable "engine_version" {
  default     = "5.7"
  type        = number
  description = "The engine version"
}

variable "instance_type" {
  default     = "db.t2.micro"
  type        = string
  description = "The RDS instance class"
}

variable "name" {
  default     = "wordpress"
  type        = string
  description = "The database name"
}

variable "username" {
  default     = "databaseteste"
  type        = string
  description = "Username of the database"
}

variable "password" {
  default     = "metal.corp123"
  type        = string
  sensitive   = true
  description = "Password of the database"
}

variable "port" {
  default     = "3306"
  type        = number
  description = "The database port"
}

variable "identifier" {
  default     = "database-rapadura"
  type        = string
  description = "The name of the RDS instance"
}

variable "parameter_group_name" {
  default     = "default.mysql5.7"
  type        = string
  description = "Name of the DB parameter group to associate"
}

variable "snapshot" {
  default     = "true"
  type        = string
  description = "skip snapshot"
}

variable "ingress_ports" {
  type        = list(number)
  default     = [3306]
  description = "List of ingress ports"
}

variable "egress_ports" {
  type        = list(number)
  default     = [3306]
  description = "List of egress ports"
}

variable "default_tags" {
  type = map(any)
  default = {
    Name : "RDS_Wordpress",
    Team : "IAC",
    Application : "Rapadura",
    Environment : "Production",
    Terraform : "Yes",
    Owner : "Metal.Corp"
  }
}
