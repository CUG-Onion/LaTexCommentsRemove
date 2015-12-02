#! /bin/bash
#移除当前目录下所有文本文件中除.txt .bat .sh 类型文件的latex 类型注释   %comment
#Remove all the latex comment in the text files excpet .txt .bat .sh files
find .   -type f -exec bash -c 'grep -Iq . "{}"' \; -and -print0 | xargs -0 -n 1   bash -c 'echo  "$@" | grep -v  ".txt\|.bat\|.sh\|.eps" ;' bash | xargs -d '\n' -n 1 sed  -i -e  '{/[^\\]%.*/{s/%.*//}};s/^%.*//;/^\s*$/d'
