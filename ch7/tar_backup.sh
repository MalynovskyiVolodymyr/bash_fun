#!/bin/bash
# backup

# Backs up all files in cturrent directory 
# modified within last 24 hours in "tarball"

BACKUPPFILE=backup-$(date +%m-%d-%Y)

archive=${1:-$BACKUPPFILE}

tar cvf - `find . -mtime -1 -type f -print` > $archive.tar
gzip $archive.tar
echo "Directory $PWD backed up in archive file \"$archive.tar.gz\""

# 'c' option 'tar' archiving command create a new archive
# 'f' (file) option, followed by '-' designates the target file
# as stdout
# 'v' send verbose messages to stdout

# Stephane Chazelas points out that the above code will fail
#+ if there are too many files found
#+ or if any filenames contain blank characters.
# He suggests the following alternatives:
# -------------------------------------------------------------------
#
# find . -mtime -1 -type f -print0 | xargs -0 tar rvf "$archive.tar"
# using the GNU version of "find".
#
# find . -mtime -1 -type f -exec tar rvf "$archive.tar" '{}' \;
# portable to other UNIX flavors, but much slower.
# -------------------------------------------------------------------

