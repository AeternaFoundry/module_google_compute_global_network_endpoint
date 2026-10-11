output "compute_global_network_endpoints_id" {
  description = "Map of id values across all compute_global_network_endpoints, keyed the same as var.compute_global_network_endpoints except keys with no id are omitted"
  value       = { for k, v in google_compute_global_network_endpoint.compute_global_network_endpoints : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_global_network_endpoints_deletion_policy" {
  description = "Map of deletion_policy values across all compute_global_network_endpoints, keyed the same as var.compute_global_network_endpoints except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_global_network_endpoint.compute_global_network_endpoints : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_global_network_endpoints_fqdn" {
  description = "Map of fqdn values across all compute_global_network_endpoints, keyed the same as var.compute_global_network_endpoints except keys with no fqdn are omitted"
  value       = { for k, v in google_compute_global_network_endpoint.compute_global_network_endpoints : k => v.fqdn if v.fqdn != null && length(v.fqdn) > 0 }
}
output "compute_global_network_endpoints_global_network_endpoint_group" {
  description = "Map of global_network_endpoint_group values across all compute_global_network_endpoints, keyed the same as var.compute_global_network_endpoints except keys with no global_network_endpoint_group are omitted"
  value       = { for k, v in google_compute_global_network_endpoint.compute_global_network_endpoints : k => v.global_network_endpoint_group if v.global_network_endpoint_group != null && length(v.global_network_endpoint_group) > 0 }
}
output "compute_global_network_endpoints_ip_address" {
  description = "Map of ip_address values across all compute_global_network_endpoints, keyed the same as var.compute_global_network_endpoints except keys with no ip_address are omitted"
  value       = { for k, v in google_compute_global_network_endpoint.compute_global_network_endpoints : k => v.ip_address if v.ip_address != null && length(v.ip_address) > 0 }
}
output "compute_global_network_endpoints_port" {
  description = "Map of port values across all compute_global_network_endpoints, keyed the same as var.compute_global_network_endpoints except keys with no port are omitted"
  value       = { for k, v in google_compute_global_network_endpoint.compute_global_network_endpoints : k => v.port if v.port != null }
}
output "compute_global_network_endpoints_project" {
  description = "Map of project values across all compute_global_network_endpoints, keyed the same as var.compute_global_network_endpoints except keys with no project are omitted"
  value       = { for k, v in google_compute_global_network_endpoint.compute_global_network_endpoints : k => v.project if v.project != null && length(v.project) > 0 }
}

