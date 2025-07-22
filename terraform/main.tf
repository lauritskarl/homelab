terraform {
  required_version = ">= 1.0"
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "~> 1.45"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

provider "hcloud" {
  token = var.hcloud_token
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

# SSH Key
resource "hcloud_ssh_key" "main" {
  name       = "homelab-key"
  public_key = var.ssh_public_key
}

# Server
resource "hcloud_server" "cloudlab" {
  name        = "cloudlab"
  image       = "fedora-39"
  server_type = var.server_type
  location    = var.server_location
  ssh_keys    = [hcloud_ssh_key.main.id]

  user_data = file("../cloud-init.yml")

  labels = {
    environment = "homelab"
    managed_by  = "terraform"
  }
}

# Cloudflare DNS Records
resource "cloudflare_record" "cloudlab_a" {
  zone_id = var.cloudflare_zone_id
  name    = "cloudlab"
  type    = "A"
  value   = hcloud_server.cloudlab.ipv4_address
  ttl     = 300

  comment = "Homelab server - managed by Terraform"
}

resource "cloudflare_record" "cloudlab_aaaa" {
  zone_id = var.cloudflare_zone_id
  name    = "cloudlab"
  type    = "AAAA"
  value   = hcloud_server.cloudlab.ipv6_address
  ttl     = 300

  comment = "Homelab server IPv6 - managed by Terraform"
}

# Wildcard DNS for services
resource "cloudflare_record" "wildcard_a" {
  zone_id = var.cloudflare_zone_id
  name    = "*.${var.subdomain}"
  type    = "A"
  value   = hcloud_server.cloudlab.ipv4_address
  ttl     = 300

  comment = "Wildcard for homelab services - managed by Terraform"
}

resource "cloudflare_record" "wildcard_aaaa" {
  zone_id = var.cloudflare_zone_id
  name    = "*.${var.subdomain}"
  type    = "AAAA"
  value   = hcloud_server.cloudlab.ipv6_address
  ttl     = 300

  comment = "Wildcard IPv6 for homelab services - managed by Terraform"
}
