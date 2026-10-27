output "serviceendpoint_snyks_id" {
  description = "Map of id values across all serviceendpoint_snyks, keyed the same as var.serviceendpoint_snyks"
  value       = { for k, v in azuredevops_serviceendpoint_snyk.serviceendpoint_snyks : k => v.id }
}
output "serviceendpoint_snyks_api_token" {
  description = "Map of api_token values across all serviceendpoint_snyks, keyed the same as var.serviceendpoint_snyks"
  value       = { for k, v in azuredevops_serviceendpoint_snyk.serviceendpoint_snyks : k => v.api_token }
  sensitive   = true
}
output "serviceendpoint_snyks_authorization" {
  description = "Map of authorization values across all serviceendpoint_snyks, keyed the same as var.serviceendpoint_snyks"
  value       = { for k, v in azuredevops_serviceendpoint_snyk.serviceendpoint_snyks : k => v.authorization }
}
output "serviceendpoint_snyks_description" {
  description = "Map of description values across all serviceendpoint_snyks, keyed the same as var.serviceendpoint_snyks"
  value       = { for k, v in azuredevops_serviceendpoint_snyk.serviceendpoint_snyks : k => v.description }
}
output "serviceendpoint_snyks_project_id" {
  description = "Map of project_id values across all serviceendpoint_snyks, keyed the same as var.serviceendpoint_snyks"
  value       = { for k, v in azuredevops_serviceendpoint_snyk.serviceendpoint_snyks : k => v.project_id }
}
output "serviceendpoint_snyks_server_url" {
  description = "Map of server_url values across all serviceendpoint_snyks, keyed the same as var.serviceendpoint_snyks"
  value       = { for k, v in azuredevops_serviceendpoint_snyk.serviceendpoint_snyks : k => v.server_url }
}
output "serviceendpoint_snyks_service_endpoint_name" {
  description = "Map of service_endpoint_name values across all serviceendpoint_snyks, keyed the same as var.serviceendpoint_snyks"
  value       = { for k, v in azuredevops_serviceendpoint_snyk.serviceendpoint_snyks : k => v.service_endpoint_name }
}

