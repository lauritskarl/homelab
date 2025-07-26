#!/usr/bin/env bash
set -euox pipefail

BACKUP_DIR=/mnt/nas/BACKUPS/containers

systemctl stop stalwart-pod.service
podman volume export stalwart-data --output=$BACKUP_DIR/stalwart-data.tar
systemctl start stalwart-pod.service

systemctl stop pocket-id-pod.service
podman volume export pocket-id-data --output=$BACKUP_DIR/pocket-id-data.tar
systemctl start pocket-id-pod.service

# systemctl stop tsidp-pod.service
# podman volume export tsidp-data --output=$BACKUP_DIR/tsidp-data.tar
# systemctl start tsidp-pod.service

systemctl stop bitwarden-pod.service
podman volume export bitwarden-data --output=$BACKUP_DIR/bitwarden-data.tar
systemctl start bitwarden-pod.service

systemctl stop immich-pod.service
podman volume export immich-postgres --output=$BACKUP_DIR/immich-postgres.tar
systemctl start immich-pod.service

systemctl stop memos-pod.service
podman volume export memos-data --output=$BACKUP_DIR/memos-data.tar
systemctl start memos-pod.service

systemctl stop gitea-pod.service
podman volume export gitea-data --output=$BACKUP_DIR/gitea-data.tar
systemctl start gitea-pod.service

systemctl stop dumbassets-pod.service
podman volume export dumbassets-data --output=$BACKUP_DIR/dumbassets-data.tar
systemctl start dumbassets-pod.service

systemctl stop dumbbudget-pod.service
podman volume export dumbbudget-data --output=$BACKUP_DIR/dumbbudget-data.tar
systemctl start dumbbudget-pod.service

systemctl stop dumbdo-pod.service
podman volume export dumbdo-data --output=$BACKUP_DIR/dumbdo-data.tar
systemctl start dumbdo-pod.service

systemctl stop dumbkan-pod.service
podman volume export dumbkan-data --output=$BACKUP_DIR/dumbkan-data.tar
systemctl start dumbkan-pod.service

systemctl stop dumbpad-pod.service
podman volume export dumbpad-data --output=$BACKUP_DIR/dumbpad-data.tar
systemctl start dumbpad-pod.service

systemctl stop searxng-pod.service
podman volume export searxng-config --output=$BACKUP_DIR/searxng-config.tar
systemctl start searxng-pod.service

systemctl stop jellyfin-pod.service
podman volume export jellyfin-config --output=$BACKUP_DIR/jellyfin-config.tar
podman volume export jellyfin-cache --output=$BACKUP_DIR/jellyfin-cache.tar
systemctl start jellyfin-pod.service
