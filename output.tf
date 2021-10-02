output "rds_hostname" {
  value       = aws_db_instance.rapadura.address
  description = "RDS instance hostname"
}

output "rds_port" {
  value       = aws_db_instance.rapadura.port
  description = "RDS instance port"
}

output "rds_username" {
  value       = aws_db_instance.rapadura.username
  description = "RDS instance root username"
}