#!/bin/sh
dir=$(dirname "$0")
cd $dir
find ../temp -name data.zip -exec rm {} \;
java -cp "../temp:../src/main:$H2DRIVERS:$CLASSPATH" org.h2.tools.Console "$@"
