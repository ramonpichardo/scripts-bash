#!/usr/bin/env bash
# -c = checksum, skip based on checksum, not mod-time & size
# -h = output numbers in a human-readable format
# -a = archive mode
# -v = verbose, increase verbosity
# -z = compress file data during transfer
# -P = same as --partial (keep partially transferred files) --progress (show progress during transfer)
# --stats = give some file-transfer stats
# 
# Copying directories from local volumes to other local volumes
rsync -chavzP --stats /Volumes/Storage01/books /Volumes/Backup01
rsync -chavzP --stats /Volumes/Storage01/documents /Volumes/Backup01
rsync -chavzP --stats /Volumes/Storage01/downloads /Volumes/Backup01
rsync -chavzP --stats /Volumes/Storage01/movies /Volumes/Backup01
rsync -chavzP --stats /Volumes/Storage01/music /Volumes/Backup01
rsync -chavzP --stats /Volumes/Storage01/pictures /Volumes/Backup01
rsync -chavzP --stats /Volumes/Storage01/software /Volumes/Backup01
# 
# Copy a file from local server to a remote server
rsync -chavzP --stats /srv/iso/CentOS-7-x86_64-DVD-1804.iso ramon@192.168.1.11:/Users/ramon/srv/ISO-nix/
exit 0
