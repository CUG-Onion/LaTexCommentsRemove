#! /bin/bash
Depth=10
find .  -maxdepth "$Depth"  -type f -exec bash -c 'grep -Iq . "{}"' \; -and -print0 | xargs -0 -n 1   bash -c 'file --mime "$@" | grep   "charset=utf-8"| cut -d : -f 1 ;' bash | xargs -d '\n' -n 1  bash -c  'iconv -c -f UTF-8 -t  GBK "$@" -o "$@"; echo "Converting file$@ .........................Finished";' bash
