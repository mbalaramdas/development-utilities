#!/bin/bash

# Script to update Java defaults. Run as root.

# Adjust according to Java version that you are installing
JDK_DIR_NAME="/usr/lib/jvm/jdk1.7.0_80"

# All Java tools according to https://docs.oracle.com/javase/8/docs/technotes/tools/unix/intro.html
TOOLS="appletviewer extcheck jar java javac javadoc javah javap jdb jdeps keytool jarsigner policytool kinit klist ktab native2ascii rmic rmiregistry rmid serialver tnameserv idlj orbd servertool javapackager pack200 unpack200 javaws jcmd jconsole jmc jvisualvm schemagen wsgen wsimport xjc jps jstat jstatd jinfo jhat jmap jsadebugd jstack jrunscript"

for TOOL in $TOOLS; do
    CMD1="update-alternatives --install /usr/bin/$TOOL $TOOL $JDK_DIR_NAME/bin/$TOOL 1"
    # echo $CMD1
    $CMD1
    CMD2="update-alternatives --config $TOOL"
    # echo $CMD2
    $CMD2
done