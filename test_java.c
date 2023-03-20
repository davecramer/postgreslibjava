#include "postgres.h"
#include <string.h>
#include "fmgr.h"
#include "utils/geo_decls.h"
#include "libjavaclasses.h"

PG_MODULE_MAGIC;

/* by value */

PG_FUNCTION_INFO_V1(add);

Datum
add(PG_FUNCTION_ARGS)
{
    graal_isolatethread_t* thread;
    graal_isolate_t* isolate;

    graal_create_isolate(NULL, &isolate, &thread);

    int32   a = PG_GETARG_INT32(0);
    int32   b = PG_GETARG_INT32(1);
    int c = java_add(thread, a, b);
    PG_RETURN_INT32(c);
}

/* by reference, fixed length */

PG_FUNCTION_INFO_V1(subtract);

Datum
subtract(PG_FUNCTION_ARGS)
{
    graal_isolatethread_t* thread;
    graal_isolate_t* isolate;

    graal_create_isolate(NULL, &isolate, &thread);

    int32   a = PG_GETARG_INT32(0);
    int32   b = PG_GETARG_INT32(1);
    int  c = java_subtract(thread, a, b);
    PG_RETURN_INT32(c);

}

