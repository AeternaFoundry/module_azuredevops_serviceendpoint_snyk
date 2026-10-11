variable "serviceendpoint_snyks" {
  description = <<EOT
Map of serviceendpoint_snyks, attributes below
Required:
    - api_token
    - project_id
    - server_url
    - service_endpoint_name
Optional:
    - description
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    api_token             = string
    project_id            = string
    server_url            = string
    service_endpoint_name = string
    description           = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_snyks : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.api_token))
      )
    ])
    error_message = "must be a valid UUID"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

