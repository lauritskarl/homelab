#!/usr/bin/env bash
set -euox pipefail

# Restore pocket-id volumes
podman volume create pocket-id-data
podman volume import pocket-id-data /mnt/nas/BACKUPS/containers/storage/volumes/pocket-id-data.tar

# Restore bitwarden volumes
podman volume create bitwarden-data
podman volume import bitwarden-data /mnt/nas/BACKUPS/containers/storage/volumes/bitwarden-data.tar
podman volume create ts-bitwarden-state
podman volume import ts-bitwarden-state /mnt/nas/BACKUPS/containers/storage/volumes/ts-bitwarden-state.tar

# Restore dumbassets volumes
podman volume create dumbassets-data
podman volume import dumbassets-data /mnt/nas/BACKUPS/containers/storage/volumes/dumbassets-data.tar
podman volume create ts-dumbassets-state
podman volume import ts-dumbassets-state /mnt/nas/BACKUPS/containers/storage/volumes/ts-dumbassets-state.tar

# Restore dumbbudget volumes
podman volume create dumbbudget-data
podman volume import dumbbudget-data /mnt/nas/BACKUPS/containers/storage/volumes/dumbbudget-data.tar
podman volume create ts-dumbbudget-state
podman volume import ts-dumbbudget-state /mnt/nas/BACKUPS/containers/storage/volumes/ts-dumbbudget-state.tar

# Restore dumbdo volumes
podman volume create dumbdo-data
podman volume import dumbdo-data /mnt/nas/BACKUPS/containers/storage/volumes/dumbdo-data.tar
podman volume create ts-dumbdo-state
podman volume import ts-dumbdo-state /mnt/nas/BACKUPS/containers/storage/volumes/ts-dumbdo-state.tar

# Restore dumbkan volumes
podman volume create dumbkan-data
podman volume import dumbkan-data /mnt/nas/BACKUPS/containers/storage/volumes/dumbkan-data.tar
podman volume create ts-dumbkan-state
podman volume import ts-dumbkan-state /mnt/nas/BACKUPS/containers/storage/volumes/ts-dumbkan-state.tar

# Restore dumbpad volumes
podman volume create dumbpad-data
podman volume import dumbpad-data /mnt/nas/BACKUPS/containers/storage/volumes/dumbpad-data.tar
podman volume create ts-dumbpad-state
podman volume import ts-dumbpad-state /mnt/nas/BACKUPS/containers/storage/volumes/ts-dumbpad-state.tar

# Restore gitea volumes
podman volume create gitea-data
podman volume import gitea-data /mnt/nas/BACKUPS/containers/storage/volumes/gitea-data.tar
podman volume create ts-gitea-state
podman volume import ts-gitea-state /mnt/nas/BACKUPS/containers/storage/volumes/ts-gitea-state.tar

# Restore glance volumes
podman volume create ts-glance-state
podman volume import ts-glance-state /mnt/nas/BACKUPS/containers/storage/volumes/ts-glance-state.tar

# Restore immich volumes
podman volume create immich-postgres
podman volume import immich-postgres /mnt/nas/BACKUPS/containers/storage/volumes/immich-postgres.tar
podman volume create immich-redis
podman volume import immich-redis /mnt/nas/BACKUPS/containers/storage/volumes/immich-redis.tar
podman volume create immich-model-cache
podman volume import immich-model-cache /mnt/nas/BACKUPS/containers/storage/volumes/immich-model-cache.tar
podman volume create ts-immich-state
podman volume import ts-immich-state /mnt/nas/BACKUPS/containers/storage/volumes/ts-immich-state.tar

# Restore jellyfin volumes
podman volume create jellyfin-cache
podman volume import jellyfin-cache /mnt/nas/BACKUPS/containers/storage/volumes/jellyfin-cache.tar
podman volume create jellyfin-config
podman volume import jellyfin-config /mnt/nas/BACKUPS/containers/storage/volumes/jellyfin-config.tar
podman volume create ts-jellyfin-state
podman volume import ts-jellyfin-state /mnt/nas/BACKUPS/containers/storage/volumes/ts-jellyfin-state.tar

# Restore memos volumes
podman volume create memos-data
podman volume import memos-data /mnt/nas/BACKUPS/containers/storage/volumes/memos-data.tar
podman volume create ts-memos-state
podman volume import ts-memos-state /mnt/nas/BACKUPS/containers/storage/volumes/ts-memos-state.tar

# Restore searxng volumes
podman volume create searxng-config
podman volume import searxng-config /mnt/nas/BACKUPS/containers/storage/volumes/searxng-config.tar
podman volume create searxng-data
podman volume import searxng-data /mnt/nas/BACKUPS/containers/storage/volumes/searxng-data.tar
podman volume create ts-searxng-state
podman volume import ts-searxng-state /mnt/nas/BACKUPS/containers/storage/volumes/ts-searxng-state.tar

# Restore stalwart volumes
podman volume create stalwart-data
podman volume import stalwart-data /mnt/nas/BACKUPS/containers/storage/volumes/stalwart-data.tar

# Restore tsidp volumes (commented out - role is disabled)
# podman volume create tsidp-data
# podman volume import tsidp-data /mnt/nas/BACKUPS/containers/storage/volumes/tsidp-data.tar
