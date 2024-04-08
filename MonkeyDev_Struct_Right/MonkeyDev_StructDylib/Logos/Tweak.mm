#line 1 "/Users/kx/Documents/MonkeyDev_Struct的副本 3/MonkeyDev_StructDylib/Logos/Tweak.xm"

#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class NSURLConnection; 


#line 1 "/Users/kx/Documents/MonkeyDev_Struct的副本 3/MonkeyDev_StructDylib/Logos/Tweak.xm"



#line 4 "/Users/kx/Documents/MonkeyDev_Struct的副本 3/MonkeyDev_StructDylib/Logos/Tweak.xm"
