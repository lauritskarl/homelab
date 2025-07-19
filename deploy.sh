#!/usr/bin/env bash
set -euox pipefail

ln -sf /mnt/HC_Volume_102902324/homelab/bitwarden /etc/containers/systemd/
ln -sf /mnt/HC_Volume_102902324/homelab/dumbassets /etc/containers/systemd/
ln -sf /mnt/HC_Volume_102902324/homelab/dumbbudget /etc/containers/systemd/
ln -sf /mnt/HC_Volume_102902324/homelab/dumbdo /etc/containers/systemd/
ln -sf /mnt/HC_Volume_102902324/homelab/dumbkan /etc/containers/systemd/
ln -sf /mnt/HC_Volume_102902324/homelab/dumbpad /etc/containers/systemd/
ln -sf /mnt/HC_Volume_102902324/homelab/gitea /etc/containers/systemd/
ln -sf /mnt/HC_Volume_102902324/homelab/glance /etc/containers/systemd/
ln -sf /mnt/HC_Volume_102902324/homelab/jellyfin /etc/containers/systemd/
ln -sf /mnt/HC_Volume_102902324/homelab/memos /etc/containers/systemd/
ln -sf /mnt/HC_Volume_102902324/homelab/pocket-id /etc/containers/systemd/
ln -sf /mnt/HC_Volume_102902324/homelab/searxng /etc/containers/systemd/
ln -sf /mnt/HC_Volume_102902324/homelab/traefik /etc/containers/systemd/
ln -sf /mnt/HC_Volume_102902324/homelab/proxy.network /etc/containers/systemd/
ln -sf /mnt/HC_Volume_102902324/homelab/tsidp /etc/containers/systemd/

systemctl daemon-reload

systemctl restart bitwarden-pod.service
systemctl restart dumbassets-pod.service
systemctl restart dumbbudget-pod.service
systemctl restart dumbdo-pod.service
systemctl restart dumbkan-pod.service
systemctl restart dumbpad-pod.service
systemctl restart gitea-pod.service
systemctl restart glance-pod.service
systemctl restart jellyfin-pod.service
systemctl restart memos-pod.service
systemctl restart pocket-id-pod.service
systemctl restart searxng-pod.service
systemctl restart traefik-pod.service
#systemctl restart tsidp-pod.service
