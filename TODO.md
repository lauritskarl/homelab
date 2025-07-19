# TODO

## Infrastructure & Networking
- [ ] Set up cloudflare tunnel for traefik and it's connected services
- [ ] Move automation and tailscale acl file to be managed by git
- [ ] Set up terraform for hetzner infra automation
- [ ] Integrate terraform with ansible inventories

## Services & Applications
- [ ] Set up mail server with stalwart mail and traefik
- [ ] Add monitoring service (uptime-kuma)
- [ ] Add infra monitoring service (beszel)
- [ ] Add pdf service (stirling-pdf)
- [ ] Add it-tools service

## Security & Backup
- [ ] Set up backup solution for all services
- [ ] Document/automate podman secrets (maybe using ansible vault)

## Automation & DevOps
- [ ] Automate terraform using github-actions (or gitea equivalent)
- [ ] Set up modern ansible execution environment
- [ ] Set up mise to automate ansible terraform etc stuff
- [ ] Make terraform call ansible automatically so everything is automated
- [ ] Automate ansible using github-actions, ansible-execution-environment, and github actions tailscale runner
- [x] Set up ansible roles for homelab services

## Operating System & Platform
- [ ] Switch to using fedora coreos and bootc