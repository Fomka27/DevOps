output "monitoring_server_public_ip" {
  description = "Public IP address of Jenkins master instance"
  value       = aws_instance.monitoring_server.public_ip
}

output "web_server_public_ip" {
  description = "Public IP address of Jenkins master instance"
  value       = aws_instance.web_server.public_ip
}

output "mysql_server_public_ip" {
  description = "Public IP address of Jenkins master instance"
  value       = aws_instance.mysql_server.public_ip
}