#!/usr/bin/env bash
rsync -azP --stats --human-readable /Volumes/Storage01/books /Volumes/Backup01
rsync -azP --stats --human-readable /Volumes/Storage01/documents /Volumes/Backup01
rsync -azP --stats --human-readable /Volumes/Storage01/downloads /Volumes/Backup01
rsync -azP --stats --human-readable /Volumes/Storage01/movies /Volumes/Backup01
rsync -azP --stats --human-readable /Volumes/Storage01/music /Volumes/Backup01
rsync -azP --stats --human-readable /Volumes/Storage01/pictures /Volumes/Backup01
rsync -azP --stats --human-readable /Volumes/Storage01/software /Volumes/Backup01
exit 0
