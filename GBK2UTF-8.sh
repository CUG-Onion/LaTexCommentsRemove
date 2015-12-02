#! /bin/bash
Depth=10
#找到当前目录下的所有文本文件，选出编码不是utf-8和ascii的转换为UTF-8
#find all the text files which not  utf-8 or ascii encoded，then encode them with utf-8 as the same name
find .  -maxdepth "$Depth"  -type f -exec bash -c 'grep -Iq . "{}"' \; -and -print0 | xargs -0 -n 1   bash -c 'file --mime "$@" | grep -v  "charset=utf-8\|ascii"| cut -d : -f 1 ;' bash | xargs -d '\n' -n 1  bash -c  'iconv -f GBK -t UTF-8  "$@" -o "$@"; echo "Converting file$@ .........................Finished";' bash
