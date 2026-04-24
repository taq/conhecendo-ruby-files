#include <stdio.h>
#include "customtime.h"
 
int main(void)
{
    puts("Shared library test:");
    puts(customtime());
    return 0;
}
