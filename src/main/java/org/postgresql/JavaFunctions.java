package org.postgresql;

import org.graalvm.nativeimage.c.function.CEntryPoint;
import org.graalvm.nativeimage.IsolateThread;

public final class JavaFunctions {

    @CEntryPoint(name="java_add")
    static int java_add(IsolateThread isolateId,  int a,  int b) {
        return a+b;
    }
    @CEntryPoint(name="java_subtract")
    static int java_subtract(IsolateThread isolateId, int a,  int b) { return a-b; }
}
