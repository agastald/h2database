#!/bin/sh
DIR=$(dirname "$0")
cd $DIR/bin
find ../temp -name data.zip -exec rm {} \;
export JAVA_OPTS="-javaagent:$HOME/lib/jars/simple-proxy-selector-agent.jar -Doracle.net.tns_admin=$HOME/etc"
export DEBUG_OPTS="-Xdebug -Xrunjdwp:server=y,transport=dt_socket,address=8000,suspend=n"
[ "-d" = "$1" ] || DEBUG_OPTS=
java $JAVA_OPTS $DEBUG_OPTS -cp "../temp:../src/main:$H2DRIVERS:$CLASSPATH" org.h2.tools.Console
