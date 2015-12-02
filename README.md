# LaTexCommentsRemove

RemoveComment.sh

    Remove latex comments ， BUT NOT WORKS ON GBK ENCODED TEXT FILES 

GBK2UTF-8.sh

    Convert  GBK  to   UTF-8
    
UTF-8 2 GBK.sh

    Convert  UTF-8 to   GBK 

        1、  先转换所有文本文件到   UTF-8   （在顶层目录下运行 GBK2UTF-8.sh）
        2、  移除注释  （在顶层目录下运行  RemoveComment.sh)
        3、  如果要在windows下编译tex，则要把文件转换回GBK （在顶层目录下运行UTF-8 2 GBK.sh)

