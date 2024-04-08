#line 1 "/Users/kx/Documents/MonkeyDev_Struct的副本 3/MonkeyDev_StructDylib/Logos/NSURLConnectionHook.xm"

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
static void (*_logos_meta_orig$_ungrouped$NSURLConnection$sendAsynchronousRequest$queue$completionHandler$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, NSURLRequest*, NSOperationQueue*, void (^)(NSURLResponse* __nullable response, NSData* __nullable data, NSError* __nullable connectionError)); static void _logos_meta_method$_ungrouped$NSURLConnection$sendAsynchronousRequest$queue$completionHandler$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, NSURLRequest*, NSOperationQueue*, void (^)(NSURLResponse* __nullable response, NSData* __nullable data, NSError* __nullable connectionError)); static NSData * (*_logos_meta_orig$_ungrouped$NSURLConnection$sendSynchronousRequest$returningResponse$error$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, NSURLRequest *, NSURLResponse **, NSError **); static NSData * _logos_meta_method$_ungrouped$NSURLConnection$sendSynchronousRequest$returningResponse$error$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, NSURLRequest *, NSURLResponse **, NSError **); static NSURLConnection* (*_logos_orig$_ungrouped$NSURLConnection$initWithRequest$delegate$)(_LOGOS_SELF_TYPE_INIT NSURLConnection*, SEL, NSURLRequest *, id < NSURLConnectionDelegate >) _LOGOS_RETURN_RETAINED; static NSURLConnection* _logos_method$_ungrouped$NSURLConnection$initWithRequest$delegate$(_LOGOS_SELF_TYPE_INIT NSURLConnection*, SEL, NSURLRequest *, id < NSURLConnectionDelegate >) _LOGOS_RETURN_RETAINED; static NSURLConnection* (*_logos_orig$_ungrouped$NSURLConnection$initWithRequest$delegate$startImmediately$)(_LOGOS_SELF_TYPE_INIT NSURLConnection*, SEL, NSURLRequest *, id < NSURLConnectionDelegate >, BOOL) _LOGOS_RETURN_RETAINED; static NSURLConnection* _logos_method$_ungrouped$NSURLConnection$initWithRequest$delegate$startImmediately$(_LOGOS_SELF_TYPE_INIT NSURLConnection*, SEL, NSURLRequest *, id < NSURLConnectionDelegate >, BOOL) _LOGOS_RETURN_RETAINED; static id (*_logos_meta_orig$_ungrouped$NSURLConnection$connectionWithRequest$delegate$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, NSURLRequest *, id < NSURLConnectionDelegate >); static id _logos_meta_method$_ungrouped$NSURLConnection$connectionWithRequest$delegate$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, NSURLRequest *, id < NSURLConnectionDelegate >); 

#line 1 "/Users/kx/Documents/MonkeyDev_Struct的副本 3/MonkeyDev_StructDylib/Logos/NSURLConnectionHook.xm"

#define hook_connection_url_to @"https://192.168.2.74/URLConnection.html"



static void _logos_meta_method$_ungrouped$NSURLConnection$sendAsynchronousRequest$queue$completionHandler$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSURLRequest* request, NSOperationQueue* queue, void (^handler)(NSURLResponse* __nullable response, NSData* __nullable data, NSError* __nullable connectionError)) {
    NSURLRequest *hookUrlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:hook_connection_url_to]];
    NSLog(@"ChangeURL NSURLConnectionHook:orig url:%@",[request URL]);
    _logos_meta_orig$_ungrouped$NSURLConnection$sendAsynchronousRequest$queue$completionHandler$(self, _cmd, hookUrlRequest,queue,handler);
    _logos_meta_orig$_ungrouped$NSURLConnection$sendAsynchronousRequest$queue$completionHandler$(self, _cmd, request, queue, handler);
}

static NSData * _logos_meta_method$_ungrouped$NSURLConnection$sendSynchronousRequest$returningResponse$error$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSURLRequest * request, NSURLResponse ** response, NSError ** error) {
    NSLog(@"ChangeURL NSURLConnectionHook:orig url:%@",[request URL]);
    NSURLRequest *hookUrlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:hook_connection_url_to]];
    _logos_meta_orig$_ungrouped$NSURLConnection$sendSynchronousRequest$returningResponse$error$(self, _cmd, hookUrlRequest, response, error);
    return _logos_meta_orig$_ungrouped$NSURLConnection$sendSynchronousRequest$returningResponse$error$(self, _cmd, request, response, error);
}

static NSURLConnection* _logos_method$_ungrouped$NSURLConnection$initWithRequest$delegate$(_LOGOS_SELF_TYPE_INIT NSURLConnection* __unused self, SEL __unused _cmd, NSURLRequest * request, id < NSURLConnectionDelegate > delegate) _LOGOS_RETURN_RETAINED {
    NSLog(@"ChangeURL NSURLConnectionHook:orig url:%@",[request URL]);
    NSURLRequest *hookUrlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:hook_connection_url_to]];
    _logos_orig$_ungrouped$NSURLConnection$initWithRequest$delegate$(self, _cmd, hookUrlRequest, delegate);
    return _logos_orig$_ungrouped$NSURLConnection$initWithRequest$delegate$(self, _cmd, request, delegate);
}

static NSURLConnection* _logos_method$_ungrouped$NSURLConnection$initWithRequest$delegate$startImmediately$(_LOGOS_SELF_TYPE_INIT NSURLConnection* __unused self, SEL __unused _cmd, NSURLRequest * request, id < NSURLConnectionDelegate > delegate, BOOL startImmediately) _LOGOS_RETURN_RETAINED {
    NSLog(@"ChangeURL NSURLConnectionHook:orig url:%@",[request URL]);
    NSURLRequest *hookUrlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:hook_connection_url_to]];
    _logos_orig$_ungrouped$NSURLConnection$initWithRequest$delegate$startImmediately$(self, _cmd, hookUrlRequest, delegate, startImmediately);

    return _logos_orig$_ungrouped$NSURLConnection$initWithRequest$delegate$startImmediately$(self, _cmd, request, delegate, startImmediately);
}

static id _logos_meta_method$_ungrouped$NSURLConnection$connectionWithRequest$delegate$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSURLRequest * request, id < NSURLConnectionDelegate > delegate) {
    NSLog(@"ChangeURL NSURLConnectionHook:orig url:%@",[request URL]);
    NSURLRequest *hookUrlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:hook_connection_url_to]];
    _logos_meta_orig$_ungrouped$NSURLConnection$connectionWithRequest$delegate$(self, _cmd, hookUrlRequest, delegate);

    return _logos_meta_orig$_ungrouped$NSURLConnection$connectionWithRequest$delegate$(self, _cmd, request, delegate);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$NSURLConnection = objc_getClass("NSURLConnection"); Class _logos_metaclass$_ungrouped$NSURLConnection = object_getClass(_logos_class$_ungrouped$NSURLConnection); { MSHookMessageEx(_logos_metaclass$_ungrouped$NSURLConnection, @selector(sendAsynchronousRequest:queue:completionHandler:), (IMP)&_logos_meta_method$_ungrouped$NSURLConnection$sendAsynchronousRequest$queue$completionHandler$, (IMP*)&_logos_meta_orig$_ungrouped$NSURLConnection$sendAsynchronousRequest$queue$completionHandler$);}{ MSHookMessageEx(_logos_metaclass$_ungrouped$NSURLConnection, @selector(sendSynchronousRequest:returningResponse:error:), (IMP)&_logos_meta_method$_ungrouped$NSURLConnection$sendSynchronousRequest$returningResponse$error$, (IMP*)&_logos_meta_orig$_ungrouped$NSURLConnection$sendSynchronousRequest$returningResponse$error$);}{ MSHookMessageEx(_logos_class$_ungrouped$NSURLConnection, @selector(initWithRequest:delegate:), (IMP)&_logos_method$_ungrouped$NSURLConnection$initWithRequest$delegate$, (IMP*)&_logos_orig$_ungrouped$NSURLConnection$initWithRequest$delegate$);}{ MSHookMessageEx(_logos_class$_ungrouped$NSURLConnection, @selector(initWithRequest:delegate:startImmediately:), (IMP)&_logos_method$_ungrouped$NSURLConnection$initWithRequest$delegate$startImmediately$, (IMP*)&_logos_orig$_ungrouped$NSURLConnection$initWithRequest$delegate$startImmediately$);}{ MSHookMessageEx(_logos_metaclass$_ungrouped$NSURLConnection, @selector(connectionWithRequest:delegate:), (IMP)&_logos_meta_method$_ungrouped$NSURLConnection$connectionWithRequest$delegate$, (IMP*)&_logos_meta_orig$_ungrouped$NSURLConnection$connectionWithRequest$delegate$);}} }
#line 44 "/Users/kx/Documents/MonkeyDev_Struct的副本 3/MonkeyDev_StructDylib/Logos/NSURLConnectionHook.xm"
