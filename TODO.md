# Homelab TODO


## 🔥 High Priority

### Infrastructure & Security
- [ ] Configure Cloudflare tunnel for Traefik proxy
- [ ] Test Cloudflare tunnel connectivity with existing services
- [ ] Research backup solutions (Restic, Borg, or Kopia)
- [ ] Design backup strategy (what, when, where to backup)
- [ ] Implement automated backups for Docker volumes
- [ ] Set up backup monitoring and alerts
- [ ] Install uptime monitoring service (Uptime Kuma)
- [ ] Configure uptime monitoring for all critical services
- [ ] Deploy infrastructure monitoring (Beszel)
- [ ] Set up monitoring dashboards and alerts

### Secrets & Configuration Management
- [ ] Audit current podman secrets usage
- [ ] Document existing secrets and their purposes
- [ ] Implement Ansible Vault for secrets management
- [ ] Migrate existing secrets to Ansible Vault
- [ ] Create secrets rotation procedures


## 🚀 Medium Priority

### Infrastructure as Code
- [ ] Initialize Terraform project for Hetzner Cloud
- [ ] Define Terraform modules for common infrastructure patterns
- [ ] Create Terraform state backend configuration
- [ ] Implement Terraform for server provisioning
- [ ] Set up Ansible execution environment with modern practices
- [ ] Configure Ansible collections and requirements
- [ ] Install and configure Mise for tool version management
- [ ] Create Mise configuration for Terraform, Ansible, and Python versions

### CI/CD & Automation
- [ ] Create GitHub Actions workflow for Terraform validation
- [ ] Implement Terraform plan/apply automation via GitHub Actions
- [ ] Set up Ansible inventory dynamic generation from Terraform
- [ ] Configure Terraform to trigger Ansible playbooks post-provision
- [ ] Create GitHub Actions workflow for Ansible linting and testing
- [ ] Set up GitHub Actions runner with Tailscale connectivity
- [ ] Implement automated Ansible deployments via GitHub Actions

### Security Enhancement
- [ ] Research CrowdSec installation and configuration
- [ ] Deploy CrowdSec on all servers
- [ ] Configure CrowdSec collections and scenarios
- [ ] Set up CrowdSec central dashboard and alerts


## 🔧 Low Priority / Future Enhancements

### System Migration Planning
- [ ] Research Fedora CoreOS migration requirements
- [ ] Test Bootc container deployment workflow
- [ ] Create migration plan from current setup to CoreOS
- [ ] Implement gradual migration to Fedora CoreOS

### Additional Services
- [ ] Plan Stalwart Mail server architecture
- [ ] Configure mail server DNS records and certificates
- [ ] Deploy and configure Stalwart Mail with Traefik
- [ ] Set up mail server monitoring and backups
- [ ] Deploy Stirling PDF service with proper resource limits
- [ ] Configure Stirling PDF behind Traefik with authentication
- [ ] Deploy IT-Tools service with Docker Compose
- [ ] Configure IT-Tools with proper security headers

### Configuration Management
- [ ] Move Tailscale ACL configuration to Git repository
- [ ] Implement GitOps workflow for Tailscale ACL updates
- [ ] Migrate automation scripts to version control
- [ ] Create documentation for all automation workflows


## ✅ Completed

- [x] Change proxy network name to traefik.network
- [x] Set up ansible roles for homelab services
- [x] Rename serve-config.json files to service-specific naming (e.g., bitwarden.json)
- [x] Convert Bitwarden .env values to podman secrets
