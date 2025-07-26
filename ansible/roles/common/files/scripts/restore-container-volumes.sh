#!/usr/bin/env bash
set -euox pipefail

BACKUP_DIR=/mnt/nas/BACKUPS/containers

systemctl stop stalwart-pod.service
podman volume rm stalwart-data
podman volume create stalwart-data
podman volume import stalwart-data $BACKUP_DIR/stalwart-data.tar
systemctl start stalwart-pod.service

systemctl stop pocket-id-pod.service
podman volume rm pocket-id-data
podman volume create pocket-id-data
podman volume import pocket-id-data $BACKUP_DIR/pocket-id-data.tar
systemctl start pocket-id-pod.service

# systemctl stop tsidp-pod.service
# podman volume rm tsidp-data
# podman volume create tsidp-data
# podman volume import tsidp-data $BACKUP_DIR/tsidp-data.tar
# systemctl start tsidp-pod.service

systemctl stop bitwarden-pod.service
podman volume rm bitwarden-data
podman volume create bitwarden-data
podman volume import bitwarden-data $BACKUP_DIR/bitwarden-data.tar
systemctl start bitwarden-pod.service

systemctl stop immich-pod.service
podman volume rm immich-postgres
podman volume create immich-postgres
podman volume import immich-postgres $BACKUP_DIR/immich-postgres.tar
systemctl start immich-pod.service

systemctl stop memos-pod.service
podman volume rm memos-data
podman volume create memos-data
podman volume import memos-data $BACKUP_DIR/memos-data.tar
systemctl start memos-pod.service

systemctl stop gitea-pod.service
podman volume rm gitea-data
podman volume create gitea-data
podman volume import gitea-data $BACKUP_DIR/gitea-data.tar
systemctl start gitea-pod.service

systemctl stop dumbassets-pod.service
podman volume rm dumbassets-data
podman volume create dumbassets-data
podman volume import dumbassets-data $BACKUP_DIR/dumbassets-data.tar
systemctl start dumbassets-pod.service

systemctl stop dumbbudget-pod.service
podman volume rm dumbbudget-data
podman volume create dumbbudget-data
podman volume import dumbbudget-data $BACKUP_DIR/dumbbudget-data.tar
systemctl start dumbbudget-pod.service

systemctl stop dumbdo-pod.service
podman volume rm dumbdo-data
podman volume create dumbdo-data
podman volume import dumbdo-data $BACKUP_DIR/dumbdo-data.tar
systemctl start dumbdo-pod.service

systemctl stop dumbkan-pod.service
podman volume rm dumbkan-data
podman volume create dumbkan-data
podman volume import dumbkan-data $BACKUP_DIR/dumbkan-data.tar
systemctl start dumbkan-pod.service

systemctl stop dumbpad-pod.service
podman volume rm dumbpad-data
podman volume create dumbpad-data
podman volume import dumbpad-data $BACKUP_DIR/dumbpad-data.tar
systemctl start dumbpad-pod.service

systemctl stop searxng-pod.service
podman volume rm searxng-config
podman volume create searxng-config
podman volume import searxng-config $BACKUP_DIR/searxng-config.tar
systemctl start searxng-pod.service

systemctl stop jellyfin-pod.service
podman volume rm jellyfin-config
podman volume create jellyfin-config
podman volume import jellyfin-config $BACKUP_DIR/jellyfin-config.tar
podman volume rm jellyfin-cache
podman volume create jellyfin-cache
podman volume import jellyfin-cache $BACKUP_DIR/jellyfin-cache.tar
systemctl start jellyfin-pod.service
