#line 1 "/Users/kx/Documents/MonkeyDev_Struct的副本 3/MonkeyDev_StructDylib/Logos/NSURLSessionHook.xm"

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

@class NSURLSession; 
static id (*_logos_orig$_ungrouped$NSURLSession$dataTaskWithRequest$completionHandler$)(_LOGOS_SELF_TYPE_NORMAL NSURLSession* _LOGOS_SELF_CONST, SEL, NSURLRequest *, id); static id _logos_method$_ungrouped$NSURLSession$dataTaskWithRequest$completionHandler$(_LOGOS_SELF_TYPE_NORMAL NSURLSession* _LOGOS_SELF_CONST, SEL, NSURLRequest *, id); static id (*_logos_orig$_ungrouped$NSURLSession$dataTaskWithURL$completionHandler$)(_LOGOS_SELF_TYPE_NORMAL NSURLSession* _LOGOS_SELF_CONST, SEL, NSURL *, id); static id _logos_method$_ungrouped$NSURLSession$dataTaskWithURL$completionHandler$(_LOGOS_SELF_TYPE_NORMAL NSURLSession* _LOGOS_SELF_CONST, SEL, NSURL *, id); 

#line 1 "/Users/kx/Documents/MonkeyDev_Struct的副本 3/MonkeyDev_StructDylib/Logos/NSURLSessionHook.xm"

#define hook_session_url_to @"https://192.168.2.74/URLSession.html"

static id _logos_method$_ungrouped$NSURLSession$dataTaskWithRequest$completionHandler$(_LOGOS_SELF_TYPE_NORMAL NSURLSession* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSURLRequest * request, id completionHandler){
    NSLog(@"ChangeURL NSURLSessionHook:orig url:%@",[request URL]);
    NSURLRequest *hookUrlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:hook_session_url_to]];
    _logos_orig$_ungrouped$NSURLSession$dataTaskWithRequest$completionHandler$(self, _cmd, hookUrlRequest,completionHandler);
    return _logos_orig$_ungrouped$NSURLSession$dataTaskWithRequest$completionHandler$(self, _cmd, request, completionHandler);
}
static id _logos_method$_ungrouped$NSURLSession$dataTaskWithURL$completionHandler$(_LOGOS_SELF_TYPE_NORMAL NSURLSession* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSURL * url, id completionHandler){
    NSLog(@"ChangeURL NSURLSessionHook:orig url:%@",url);
    NSURL *hookUrl = [NSURL URLWithString:hook_session_url_to];
    _logos_orig$_ungrouped$NSURLSession$dataTaskWithURL$completionHandler$(self, _cmd, hookUrl,completionHandler);
    return _logos_orig$_ungrouped$NSURLSession$dataTaskWithURL$completionHandler$(self, _cmd, url, completionHandler);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$NSURLSession = objc_getClass("NSURLSession"); { MSHookMessageEx(_logos_class$_ungrouped$NSURLSession, @selector(dataTaskWithRequest:completionHandler:), (IMP)&_logos_method$_ungrouped$NSURLSession$dataTaskWithRequest$completionHandler$, (IMP*)&_logos_orig$_ungrouped$NSURLSession$dataTaskWithRequest$completionHandler$);}{ MSHookMessageEx(_logos_class$_ungrouped$NSURLSession, @selector(dataTaskWithURL:completionHandler:), (IMP)&_logos_method$_ungrouped$NSURLSession$dataTaskWithURL$completionHandler$, (IMP*)&_logos_orig$_ungrouped$NSURLSession$dataTaskWithURL$completionHandler$);}} }
#line 18 "/Users/kx/Documents/MonkeyDev_Struct的副本 3/MonkeyDev_StructDylib/Logos/NSURLSessionHook.xm"
