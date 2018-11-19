#!/usr/bin/env bash
# -a = archive mode
# -z = compress file data during transfer
# -P = same as --partial (keep partially transferred files) --progress (show progress during transfer)
# --stats = give some file-transfer stats
# --human-readable = output numbers in a human-readable format
rsync -azP --stats --human-readable /Volumes/Storage01/books /Volumes/Backup01
rsync -azP --stats --human-readable /Volumes/Storage01/documents /Volumes/Backup01
rsync -azP --stats --human-readable /Volumes/Storage01/downloads /Volumes/Backup01
rsync -azP --stats --human-readable /Volumes/Storage01/movies /Volumes/Backup01
rsync -azP --stats --human-readable /Volumes/Storage01/music /Volumes/Backup01
rsync -azP --stats --human-readable /Volumes/Storage01/pictures /Volumes/Backup01
rsync -azP --stats --human-readable /Volumes/Storage01/software /Volumes/Backup01
exit 0
