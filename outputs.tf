output "name" {
  value       = google_sql_database_instance.default.name
  description = "The instance name for the master instance"
}

output "public_ip_address" {
  value       = google_sql_database_instance.default.public_ip_address
  description = "The first public (PRIMARY) IPv4 address assigned for the master instance"
}

output "private_ip_address" {
  value       = google_sql_database_instance.default.private_ip_address
  description = "The first private (PRIVATE) IPv4 address assigned for the master instance"
}

output "ip_address" {
  value       = google_sql_database_instance.default.ip_address
  description = "The IPv4 address assigned for the master instance"
}

output "first_ip_address" {
  value       = google_sql_database_instance.default.first_ip_address
  description = "The first IPv4 address of the addresses assigned."
}

output "connection_name" {
  value       = google_sql_database_instance.default.connection_name
  description = "The connection name of the master instance to be used in connection strings"
}

output "self_link" {
  value       = google_sql_database_instance.default.self_link
  description = "The URI of the master instance"
}

output "server_ca_cert" {
  value       = google_sql_database_instance.default.server_ca_cert
  description = "The CA certificate information used to connect to the SQL instance via SSL"
}

output "service_account_email_address" {
  value       = google_sql_database_instance.default.service_account_email_address
  description = "The service account email address assigned to the master instance"
}

output "psc_service_attachment_link" {
  value       = google_sql_database_instance.default.psc_service_attachment_link
  description = "The psc_service_attachment_link created for the master instance"
}

output "generated_user_password" {
  value       = [for pwd in random_password.user_password : pwd.result]
  sensitive   = true
  description = "The auto-generated default user password if no input password was provided"
}

output "iam_users" {
  value       = var.iam_users
  description = "The list of the IAM users with access to the CloudSQL instance"
}

output "primary" {
  value       = google_sql_database_instance.default
  sensitive   = true
  description = "The `google_sql_database_instance` resource representing the primary instance"
}

output "replicas" {
  value       = values(google_sql_database_instance.default)
  sensitive   = true
  description = "A list of `google_sql_database_instance` resources representing the replicas"
}

output "instances" {
  value       = concat([google_sql_database_instance.default], values(google_sql_database_instance.default))
  sensitive   = true
  description = "A list of all `google_sql_database_instance` resources we've created"
}