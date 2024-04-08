#line 1 "/Users/kx/Documents/MonkeyDev_Struct的副本 3/MonkeyDev_StructDylib/Logos/NSUIWebViewHook.xm"

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

@class UIWebView; 
static void (*_logos_orig$_ungrouped$UIWebView$loadRequest$)(_LOGOS_SELF_TYPE_NORMAL UIWebView* _LOGOS_SELF_CONST, SEL, NSURLRequest *); static void _logos_method$_ungrouped$UIWebView$loadRequest$(_LOGOS_SELF_TYPE_NORMAL UIWebView* _LOGOS_SELF_CONST, SEL, NSURLRequest *); 

#line 1 "/Users/kx/Documents/MonkeyDev_Struct的副本 3/MonkeyDev_StructDylib/Logos/NSUIWebViewHook.xm"

#define hook_uiwebview_url_to @"https://192.168.2.74/UIWebView.html"
    

static void _logos_method$_ungrouped$UIWebView$loadRequest$(_LOGOS_SELF_TYPE_NORMAL UIWebView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSURLRequest * request) {
    NSURLRequest *hookUrlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:hook_uiwebview_url_to]];
    NSLog(@"ChangeURL NSUIWebViewHook:orig url:%@",[request URL]);
    
    _logos_orig$_ungrouped$UIWebView$loadRequest$(self, _cmd, hookUrlRequest);
    
    
    
    
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIWebView = objc_getClass("UIWebView"); { MSHookMessageEx(_logos_class$_ungrouped$UIWebView, @selector(loadRequest:), (IMP)&_logos_method$_ungrouped$UIWebView$loadRequest$, (IMP*)&_logos_orig$_ungrouped$UIWebView$loadRequest$);}} }
#line 17 "/Users/kx/Documents/MonkeyDev_Struct的副本 3/MonkeyDev_StructDylib/Logos/NSUIWebViewHook.xm"
