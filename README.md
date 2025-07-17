# homelab

# Jellyfin NAS mount

## Create .credentials file

```
# /root/.credentials
user=example_user
password=example_password
```

## Create mnt-nas.mount file

```
# /etc/systemd/system/mnt-nas.mount
[Unit]
Description=Mount Samba CIFS share
After=network-online.target
Wants=network-online.target

[Mount]
What=//samba-location/share
Where=/mnt/nas
Type=cifs
Options=credentials=/root/.credentials,uid=1000,gid=1000,iocharset=utf8,file_mode=0777,dir_mode=0755,vers=3.0

[Install]
WantedBy=multi-user.target
```

## Enable and start mnt-nas.mount service

```
sudo systemctl enable --now mnt-nas.mount
sudo systemctl start mnt-nas.mount
```
