output "jenkins_master_public_ip" {
  description = "Public IP address of Jenkins master instance"
  value       = aws_instance.jenkins_master.public_ip
}

output "app_server_public_ip" {
  description = "Public IP address of Jenkins master instance"
  value       = aws_instance.app_server.public_ip
}
