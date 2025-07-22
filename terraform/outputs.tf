output "server_ipv4" {
  description = "Public IPv4 address of the server"
  value       = hcloud_server.cloudlab.ipv4_address
}

output "server_ipv6" {
  description = "Public IPv6 address of the server"
  value       = hcloud_server.cloudlab.ipv6_address
}

output "server_name" {
  description = "Name of the server"
  value       = hcloud_server.cloudlab.name
}

output "server_status" {
  description = "Status of the server"
  value       = hcloud_server.cloudlab.status
}

output "dns_records" {
  description = "Created DNS records"
  value = {
    cloudlab_a    = cloudflare_record.cloudlab_a.hostname
    cloudlab_aaaa = cloudflare_record.cloudlab_aaaa.hostname
    wildcard_a    = cloudflare_record.wildcard_a.hostname
    wildcard_aaaa = cloudflare_record.wildcard_aaaa.hostname
  }
}

output "ansible_inventory" {
  description = "Ansible inventory format for the server"
  value = <<-EOT
[all]
cloudlab ansible_host=${hcloud_server.cloudlab.ipv4_address}
EOT
}
