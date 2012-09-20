#include "ruby.h"

#define init(func, name) {	\
    extern void func _((void));	\
    ruby_init_ext(name, func);	\
}

void ruby_init_ext _((const char *name, void (*init)(void)));

void Init_ext _((void))
{
}
