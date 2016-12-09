#!/bin/sh
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:.
javac HelloWorld.java
javah HelloWorld
gcc -shared -fPIC -I $JAVA_HOME/include -I $JAVA_HOME/include/darwin libHelloWorld.c -o libHelloWorld.jnilib
java HelloWorld
