#!/usr/bin/env bash
set -euox pipefail

podman volume export pocket-id-data --output=/mnt/nas/BACKUPS/containers/storage/volumes/pocket-id-data.tar

podman volume export bitwarden-data --output=/mnt/nas/BACKUPS/containers/storage/volumes/bitwarden-data.tar
podman volume export ts-bitwarden-state --output=/mnt/nas/BACKUPS/containers/storage/volumes/ts-bitwarden-state.tar

podman volume export dumbassets-data --output=/mnt/nas/BACKUPS/containers/storage/volumes/dumbassets-data.tar
podman volume export ts-dumbassets-state --output=/mnt/nas/BACKUPS/containers/storage/volumes/ts-dumbassets-state.tar

podman volume export dumbbudget-data --output=/mnt/nas/BACKUPS/containers/storage/volumes/dumbbudget-data.tar
podman volume export ts-dumbbudget-state --output=/mnt/nas/BACKUPS/containers/storage/volumes/ts-dumbbudget-state.tar

podman volume export dumbdo-data --output=/mnt/nas/BACKUPS/containers/storage/volumes/dumbdo-data.tar
podman volume export ts-dumbdo-state --output=/mnt/nas/BACKUPS/containers/storage/volumes/ts-dumbdo-state.tar

podman volume export dumbkan-data --output=/mnt/nas/BACKUPS/containers/storage/volumes/dumbkan-data.tar
podman volume export ts-dumbkan-state --output=/mnt/nas/BACKUPS/containers/storage/volumes/ts-dumbkan-state.tar

podman volume export dumbpad-data --output=/mnt/nas/BACKUPS/containers/storage/volumes/dumbpad-data.tar
podman volume export ts-dumbpad-state --output=/mnt/nas/BACKUPS/containers/storage/volumes/ts-dumbpad-state.tar

podman volume export gitea-data --output=/mnt/nas/BACKUPS/containers/storage/volumes/gitea-data.tar
podman volume export ts-gitea-state --output=/mnt/nas/BACKUPS/containers/storage/volumes/ts-gitea-state.tar

podman volume export ts-glance-state --output=/mnt/nas/BACKUPS/containers/storage/volumes/ts-dumbdo-state.tar

podman volume export jellyfin-cache --output=/mnt/nas/BACKUPS/containers/storage/volumes/jellyfin-cache.tar
podman volume export jellyfin-config --output=/mnt/nas/BACKUPS/containers/storage/volumes/jellyfin-config.tar
podman volume export ts-dumbdo-state --output=/mnt/nas/BACKUPS/containers/storage/volumes/ts-dumbdo-state.tar

podman volume export memos-data --output=/mnt/nas/BACKUPS/containers/storage/volumes/memos-data.tar
podman volume export ts-memos-state --output=/mnt/nas/BACKUPS/containers/storage/volumes/ts-memos-state.tar

podman volume export searxng-data --output=/mnt/nas/BACKUPS/containers/storage/volumes/searxng-data.tar
podman volume export ts-searxng-state --output=/mnt/nas/BACKUPS/containers/storage/volumes/ts-searxng-state.tar

# podman volume export tsidp-data --output=/mnt/nas/BACKUPS/containers/storage/volumes/tsidp-data.tar
