output "router" {
  value       = module.cloud_router.router
  description = " Information specific to an InterconnectAttachment. "
}

output "nat" {
  value       = module.cloud_router.nat
  description = "The current state of this attachment's functionality."
}

output "id" {
  value       = module.cloud_router.router_id
  description = "Google reference ID,"
}

output "creation_timestamp" {
  value       = module.cloud_router.router_creation_timestamp
  description = "Creation timestamp in RFC3339 text format."
}

output "self_link" {
  value       = module.cloud_router.router_self_link
  description = "The URI of the created resource."
}

output "customer_router_ip_address" {
  value       = module.cloud_router.customer_router_ip_address
  description = "IPv4 address + prefix length to be configured on the customer router subinterface for this interconnect attachment."
}
