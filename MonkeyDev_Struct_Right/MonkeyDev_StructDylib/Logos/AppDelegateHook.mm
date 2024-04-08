#line 1 "/Users/kx/Documents/MonkeyDev_Struct的副本 3/MonkeyDev_StructDylib/Logos/AppDelegateHook.xm"
#import "CustomURLProtocol.h"

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

@class AppDelegate; 
static BOOL (*_logos_orig$_ungrouped$AppDelegate$application$didFinishLaunchingWithOptions$)(_LOGOS_SELF_TYPE_NORMAL AppDelegate* _LOGOS_SELF_CONST, SEL, UIApplication *, NSDictionary *); static BOOL _logos_method$_ungrouped$AppDelegate$application$didFinishLaunchingWithOptions$(_LOGOS_SELF_TYPE_NORMAL AppDelegate* _LOGOS_SELF_CONST, SEL, UIApplication *, NSDictionary *); 

#line 2 "/Users/kx/Documents/MonkeyDev_Struct的副本 3/MonkeyDev_StructDylib/Logos/AppDelegateHook.xm"


static BOOL _logos_method$_ungrouped$AppDelegate$application$didFinishLaunchingWithOptions$(_LOGOS_SELF_TYPE_NORMAL AppDelegate* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIApplication * application, NSDictionary * launchOptions) {
    
    
    
    [NSURLProtocol registerClass:[CustomURLProtocol class]];
    return YES;
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$AppDelegate = objc_getClass("AppDelegate"); { MSHookMessageEx(_logos_class$_ungrouped$AppDelegate, @selector(application:didFinishLaunchingWithOptions:), (IMP)&_logos_method$_ungrouped$AppDelegate$application$didFinishLaunchingWithOptions$, (IMP*)&_logos_orig$_ungrouped$AppDelegate$application$didFinishLaunchingWithOptions$);}} }
#line 12 "/Users/kx/Documents/MonkeyDev_Struct的副本 3/MonkeyDev_StructDylib/Logos/AppDelegateHook.xm"
