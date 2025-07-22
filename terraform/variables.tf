variable "hcloud_token" {
  description = "Hetzner Cloud API token"
  type        = string
  sensitive   = true
}

variable "cloudflare_api_token" {
  description = "Cloudflare API token with Zone:Edit permissions"
  type        = string
  sensitive   = true
}

variable "cloudflare_zone_id" {
  description = "Cloudflare zone ID for your domain"
  type        = string
}

variable "ssh_public_key" {
  description = "SSH public key for server access"
  type        = string
}

variable "server_type" {
  description = "Hetzner server type"
  type        = string
  default     = "cx22"
}

variable "server_location" {
  description = "Hetzner server location"
  type        = string
  default     = "nbg1"
}

variable "subdomain" {
  description = "Subdomain for wildcard DNS (e.g., 'lab' for *.lab.yourdomain.com)"
  type        = string
  default     = "lab"
}
