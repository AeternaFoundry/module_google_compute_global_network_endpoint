resource "google_compute_global_network_endpoint" "compute_global_network_endpoints" {
  for_each = var.compute_global_network_endpoints

  global_network_endpoint_group = each.value.global_network_endpoint_group
  port                          = each.value.port
  deletion_policy               = each.value.deletion_policy
  fqdn                          = each.value.fqdn
  ip_address                    = each.value.ip_address
  project                       = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

