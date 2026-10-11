variable "compute_global_network_endpoints" {
  description = <<EOT
Map of compute_global_network_endpoints, attributes below
Required:
    - global_network_endpoint_group
    - port
Optional:
    - deletion_policy
    - fqdn
    - ip_address
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    global_network_endpoint_group = string
    port                          = number
    deletion_policy               = optional(string)
    fqdn                          = optional(string)
    ip_address                    = optional(string)
    project                       = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.compute_global_network_endpoints : (
        v.port >= 1
      )
    ])
    error_message = "must be at least 1"
  }
}

