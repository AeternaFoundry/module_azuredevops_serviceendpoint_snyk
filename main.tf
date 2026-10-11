resource "azuredevops_serviceendpoint_snyk" "serviceendpoint_snyks" {
  for_each = var.serviceendpoint_snyks

  api_token             = each.value.api_token
  project_id            = each.value.project_id
  server_url            = each.value.server_url
  service_endpoint_name = each.value.service_endpoint_name
  description           = each.value.description

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

