#!/usr/bin/env bash
set -euox pipefail

# Backup pocket-id volumes
podman volume export pocket-id-data --output=/mnt/nas/BACKUPS/containers/storage/volumes/pocket-id-data.tar

# Backup bitwarden volumes
podman volume export bitwarden-data --output=/mnt/nas/BACKUPS/containers/storage/volumes/bitwarden-data.tar
podman volume export ts-bitwarden-state --output=/mnt/nas/BACKUPS/containers/storage/volumes/ts-bitwarden-state.tar

# Backup dumbassets volumes
podman volume export dumbassets-data --output=/mnt/nas/BACKUPS/containers/storage/volumes/dumbassets-data.tar
podman volume export ts-dumbassets-state --output=/mnt/nas/BACKUPS/containers/storage/volumes/ts-dumbassets-state.tar

# Backup dumbbudget volumes
podman volume export dumbbudget-data --output=/mnt/nas/BACKUPS/containers/storage/volumes/dumbbudget-data.tar
podman volume export ts-dumbbudget-state --output=/mnt/nas/BACKUPS/containers/storage/volumes/ts-dumbbudget-state.tar

# Backup dumbdo volumes
podman volume export dumbdo-data --output=/mnt/nas/BACKUPS/containers/storage/volumes/dumbdo-data.tar
podman volume export ts-dumbdo-state --output=/mnt/nas/BACKUPS/containers/storage/volumes/ts-dumbdo-state.tar

# Backup dumbkan volumes
podman volume export dumbkan-data --output=/mnt/nas/BACKUPS/containers/storage/volumes/dumbkan-data.tar
podman volume export ts-dumbkan-state --output=/mnt/nas/BACKUPS/containers/storage/volumes/ts-dumbkan-state.tar

# Backup dumbpad volumes
podman volume export dumbpad-data --output=/mnt/nas/BACKUPS/containers/storage/volumes/dumbpad-data.tar
podman volume export ts-dumbpad-state --output=/mnt/nas/BACKUPS/containers/storage/volumes/ts-dumbpad-state.tar

# Backup gitea volumes
podman volume export gitea-data --output=/mnt/nas/BACKUPS/containers/storage/volumes/gitea-data.tar
podman volume export ts-gitea-state --output=/mnt/nas/BACKUPS/containers/storage/volumes/ts-gitea-state.tar

# Backup glance volumes
podman volume export ts-glance-state --output=/mnt/nas/BACKUPS/containers/storage/volumes/ts-glance-state.tar

# Backup immich volumes
podman volume export immich-db --output=/mnt/nas/BACKUPS/containers/storage/volumes/immich-db.tar
podman volume export immich-redis --output=/mnt/nas/BACKUPS/containers/storage/volumes/immich-redis.tar
podman volume export immich-model-cache --output=/mnt/nas/BACKUPS/containers/storage/volumes/immich-model-cache.tar
podman volume export ts-immich-state --output=/mnt/nas/BACKUPS/containers/storage/volumes/ts-immich-state.tar

# Backup jellyfin volumes
podman volume export jellyfin-cache --output=/mnt/nas/BACKUPS/containers/storage/volumes/jellyfin-cache.tar
podman volume export jellyfin-config --output=/mnt/nas/BACKUPS/containers/storage/volumes/jellyfin-config.tar
podman volume export ts-jellyfin-state --output=/mnt/nas/BACKUPS/containers/storage/volumes/ts-jellyfin-state.tar

# Backup memos volumes
podman volume export memos-data --output=/mnt/nas/BACKUPS/containers/storage/volumes/memos-data.tar
podman volume export ts-memos-state --output=/mnt/nas/BACKUPS/containers/storage/volumes/ts-memos-state.tar

# Backup searxng volumes
podman volume export searxng-config --output=/mnt/nas/BACKUPS/containers/storage/volumes/searxng-config.tar
podman volume export searxng-data --output=/mnt/nas/BACKUPS/containers/storage/volumes/searxng-data.tar
podman volume export ts-searxng-state --output=/mnt/nas/BACKUPS/containers/storage/volumes/ts-searxng-state.tar

# Backup tsidp volumes (commented out - role is disabled)
# podman volume export tsidp-data --output=/mnt/nas/BACKUPS/containers/storage/volumes/tsidp-data.tar
