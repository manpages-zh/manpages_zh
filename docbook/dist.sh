#!/bin/sh

# Script used to convert DocBook XML file to groff-format man page.
# author: @hosiet
#

# #说明
#
# 文件按照命名方式放在 docbook/*/ 子文件夹下；自动根据文件名生成 groff 文件放入
# man/manX/ 文件夹下
#
# #使用方法
#
# *  直接运行脚本：在 XML 文件所在目录生成 groff 文档
# *  紧跟 dist 参数：自动生成文档，并将文档复制到 man/manX/ 文件夹中
#

SRCDIR="$(pwd)"
TOPDIR="${SRCDIR}/.."
DISTDIR="${TOPDIR}/man/"
#DOCBOOK_XSL="/usr/share/xml/docbook/xsl-stylesheets-1.78.1/manpages/docbook.xsl"
#DOCBOOK_XHTML_XSL="/usr/share/xml/docbook-xsl-stylesheets-1.78.1/xhtml5/xhtml-docbook.xsl"
DOCBOOK_XSL="${SRCDIR}/xsl-stylesheets-1.78.1~manpages_zh/manpages/docbook.xsl"
DOCBOOK_XHTML_XSL="${SRCDIR}/xsl-stylesheets-1.78.1~manpages_zh/xhtml5/xhtml-docbook-manpage.xsl"

#declare -a NODIST_NAME
#NODIST_NAME=(scp.1)

##
# 判断文件是 XML 文件
#
isValidXML()
{
    TESTNAME=$(echo $1 | grep -o "\.xml$")
    if [ "x${TESTNAME}" = "x.xml" ]; then
        return 0;
    else
        return 1;
    fi
}

##
# 判断文件是 XHTML 文件
#
isValidXHTML()
{
    TESTNAME=$(echo $1 | grep -o "\.xhtml$")
    if [ "x${TESTNAME}" = "x.xhtml" ]; then
        return 0;
    else
        return 1;
    fi
}

##
# 判断文件是合法 man page
#
isValidManPage()
{
    if isValidXML $1 || isValidXHTML $1; then
        return 1
    fi
    TESTNAME=$(echo $1 | grep -o "^[_0-9a-zA-Z-]*\.[0-9][a-zA-Z]*")
    if [ ! "x${TESTNAME}" = "x" ]; then
        # is valid man page file
        return 0
    else
        return 1
    fi
}

##
# 获取文件名对应的 man 分区
#
getManSection()
{
    TESTNAME=$(echo $1 | grep -o "\.[0-9]")
    TESTNAME1=$(echo ${TESTNAME} | grep -o "[0-9]")
    echo ${TESTNAME1}
}

##
# 根据 XML 文件名获取 man 文件名
#
# TODO FIXME 判断大小写
getManFileName()
{
    TESTNAME=$(echo $1 | grep -o "^[_0-9a-zA-Z-]*\.[0-9][a-zA-Z]*" 2> /dev/null)
    echo "${TESTNAME}"
}

#################### 主过程 ##########################

##
# 判断工作目录
#
if [ ! "x$(echo $(pwd) | grep -o '/docbook$')" = "x/docbook" ]; then
    echo "You must run this script with \$PWD set to docbook dir."
    exit 1
fi

##
# 进行 XSLT
#
echo " *  Processing XML file..."
for DNAME in $(ls); do
    if [ -d $DNAME ]; then
        cd $DNAME;
        for FNAME in $(ls); do
            if isValidXML ${FNAME}; then
                # xsltproc
                #echo "XSL is ${DOCBOOK_XSL}, FNAME is ${FNAME}"
                xsltproc ${DOCBOOK_XSL} ./${FNAME} # 2> /dev/null
                xsltproc ${DOCBOOK_XHTML_XSL} ./${FNAME} > ./$(getManFileName ${FNAME}).xhtml
                #echo -n "."
            fi
        done
    fi
    cd ${SRCDIR}
done
echo " *  Done!"

##
# 将生成文件移入 man 文件夹下
#
if [ "$1" = "dist" ]; then
    # begin
    echo " *  Moving man page into man/manX/ subdir..."
    cd ${SRCDIR}
    cp ./*.css ../html/
    for DNAME in $(ls); do
        if [ -d ${DNAME} ]; then
            cd ${DNAME};
            for FNAME in $(ls); do
                if isValidXHTML ${FNAME}; then
                    # determine man section
                    MAN_SECTION=$(getManSection ${FNAME});
                    # move XHTML file
                    mv -v ./${FNAME} ${TOPDIR}/html/
                    continue
                fi
                if isValidManPage ${FNAME}; then
                    # determine man section
                    MAN_SECTION=$(getManSection ${FNAME});
                    # move groff file
                    mv -v ./${FNAME} ${SRCDIR}/../man/zh_CN/man${MAN_SECTION}/
                fi
            done
        fi
    cd ${SRCDIR}
    # end
    done
echo " *  Done!"
fi
