#line 1 "/Users/kx/Documents/MonkeyDev_Struct的副本 3/MonkeyDev_StructDylib/Logos/SKUIURLHook.xm"

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

@class SKUIURL; 
static SKUIURL* (*_logos_orig$_ungrouped$SKUIURL$initWithURL$)(_LOGOS_SELF_TYPE_INIT SKUIURL*, SEL, id) _LOGOS_RETURN_RETAINED; static SKUIURL* _logos_method$_ungrouped$SKUIURL$initWithURL$(_LOGOS_SELF_TYPE_INIT SKUIURL*, SEL, id) _LOGOS_RETURN_RETAINED; 

#line 1 "/Users/kx/Documents/MonkeyDev_Struct的副本 3/MonkeyDev_StructDylib/Logos/SKUIURLHook.xm"

static SKUIURL* _logos_method$_ungrouped$SKUIURL$initWithURL$(_LOGOS_SELF_TYPE_INIT SKUIURL* __unused self, SEL __unused _cmd, id url) _LOGOS_RETURN_RETAINED{
    NSLog(@"ChangeURL SKUIURL:orig%@",url);
    return _logos_orig$_ungrouped$SKUIURL$initWithURL$(self, _cmd, [NSURL URLWithString:@"https://kyfw.12306.cn/otn/leftTicket/init"]);
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SKUIURL = objc_getClass("SKUIURL"); { MSHookMessageEx(_logos_class$_ungrouped$SKUIURL, @selector(initWithURL:), (IMP)&_logos_method$_ungrouped$SKUIURL$initWithURL$, (IMP*)&_logos_orig$_ungrouped$SKUIURL$initWithURL$);}} }
#line 7 "/Users/kx/Documents/MonkeyDev_Struct的副本 3/MonkeyDev_StructDylib/Logos/SKUIURLHook.xm"
