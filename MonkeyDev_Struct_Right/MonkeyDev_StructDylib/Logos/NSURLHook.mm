#line 1 "/Users/kx/Documents/MonkeyDev_Struct的副本 3/MonkeyDev_StructDylib/Logos/NSURLHook.xm"

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

@class NSURL; 
static id (*_logos_orig$_ungrouped$NSURL$URLWithString$)(_LOGOS_SELF_TYPE_NORMAL NSURL* _LOGOS_SELF_CONST, SEL, NSString *); static id _logos_method$_ungrouped$NSURL$URLWithString$(_LOGOS_SELF_TYPE_NORMAL NSURL* _LOGOS_SELF_CONST, SEL, NSString *); 

#line 1 "/Users/kx/Documents/MonkeyDev_Struct的副本 3/MonkeyDev_StructDylib/Logos/NSURLHook.xm"


static id _logos_method$_ungrouped$NSURL$URLWithString$(_LOGOS_SELF_TYPE_NORMAL NSURL* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSString * URLString){
    NSLog(@"ChangeURL NSURLHook:orig url:w%@",URLString);
    
    return _logos_orig$_ungrouped$NSURL$URLWithString$(self, _cmd, @"https://kyfw.12306.cn/otn/leftTicket/init");
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$NSURL = objc_getClass("NSURL"); { MSHookMessageEx(_logos_class$_ungrouped$NSURL, @selector(URLWithString:), (IMP)&_logos_method$_ungrouped$NSURL$URLWithString$, (IMP*)&_logos_orig$_ungrouped$NSURL$URLWithString$);}} }
#line 9 "/Users/kx/Documents/MonkeyDev_Struct的副本 3/MonkeyDev_StructDylib/Logos/NSURLHook.xm"
