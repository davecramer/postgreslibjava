Building

compile the java code
./gradlew jar

Use native-image to create 

libjavaclasses.h
libjavaclasses.dylib

$GRAALVM_HOME/bin/native-image -cp build/classes/java/main -H:Name=libjavaclasses --shared --initialize-at-build-time --verbose --no-server

compile test_java.c ignore the link errors

PATH=/usr/local/pgsql/head/bin/:$PATH USE_PGXS=1 make

use ld to link test_java.o and libjavaclasses to create test_java.dylib

ld -r -dylib -o test_java.dylib test_java.o libjavaclasses.dylib


PATH=/usr/local/pgsql/head/bin/:$PATH USE_PGXS=1 make install to install the extension

You can then use create extension test_java 

select add(1,1)
or select subtract(1,1)



