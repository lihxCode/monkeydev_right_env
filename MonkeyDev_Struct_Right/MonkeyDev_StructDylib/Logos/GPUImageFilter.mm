#line 1 "/Users/kx/Documents/MonkeyDev_Struct的副本 3/MonkeyDev_StructDylib/Logos/GPUImageFilter.xm"

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

@class GPUImageFilter; 
static void (*_logos_orig$_ungrouped$GPUImageFilter$forceProcessingAtSizeRespectingAspectRatio$)(_LOGOS_SELF_TYPE_NORMAL GPUImageFilter* _LOGOS_SELF_CONST, SEL, struct CGSize); static void _logos_method$_ungrouped$GPUImageFilter$forceProcessingAtSizeRespectingAspectRatio$(_LOGOS_SELF_TYPE_NORMAL GPUImageFilter* _LOGOS_SELF_CONST, SEL, struct CGSize); static void (*_logos_orig$_ungrouped$GPUImageFilter$forceProcessingAtSize$)(_LOGOS_SELF_TYPE_NORMAL GPUImageFilter* _LOGOS_SELF_CONST, SEL, struct CGSize); static void _logos_method$_ungrouped$GPUImageFilter$forceProcessingAtSize$(_LOGOS_SELF_TYPE_NORMAL GPUImageFilter* _LOGOS_SELF_CONST, SEL, struct CGSize); static void (*_logos_orig$_ungrouped$GPUImageFilter$setInputRotation$atIndex$)(_LOGOS_SELF_TYPE_NORMAL GPUImageFilter* _LOGOS_SELF_CONST, SEL, unsigned long long, long long); static void _logos_method$_ungrouped$GPUImageFilter$setInputRotation$atIndex$(_LOGOS_SELF_TYPE_NORMAL GPUImageFilter* _LOGOS_SELF_CONST, SEL, unsigned long long, long long); static struct CGPoint (*_logos_orig$_ungrouped$GPUImageFilter$rotatedPoint$forRotation$)(_LOGOS_SELF_TYPE_NORMAL GPUImageFilter* _LOGOS_SELF_CONST, SEL, struct CGPoint, unsigned long long); static struct CGPoint _logos_method$_ungrouped$GPUImageFilter$rotatedPoint$forRotation$(_LOGOS_SELF_TYPE_NORMAL GPUImageFilter* _LOGOS_SELF_CONST, SEL, struct CGPoint, unsigned long long); static struct CGSize (*_logos_orig$_ungrouped$GPUImageFilter$rotatedSize$forIndex$)(_LOGOS_SELF_TYPE_NORMAL GPUImageFilter* _LOGOS_SELF_CONST, SEL, struct CGSize, long long); static struct CGSize _logos_method$_ungrouped$GPUImageFilter$rotatedSize$forIndex$(_LOGOS_SELF_TYPE_NORMAL GPUImageFilter* _LOGOS_SELF_CONST, SEL, struct CGSize, long long); static void (*_logos_orig$_ungrouped$GPUImageFilter$initializeAttributes)(_LOGOS_SELF_TYPE_NORMAL GPUImageFilter* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$GPUImageFilter$initializeAttributes(_LOGOS_SELF_TYPE_NORMAL GPUImageFilter* _LOGOS_SELF_CONST, SEL); static GPUImageFilter* (*_logos_orig$_ungrouped$GPUImageFilter$init)(_LOGOS_SELF_TYPE_INIT GPUImageFilter*, SEL) _LOGOS_RETURN_RETAINED; static GPUImageFilter* _logos_method$_ungrouped$GPUImageFilter$init(_LOGOS_SELF_TYPE_INIT GPUImageFilter*, SEL) _LOGOS_RETURN_RETAINED; static GPUImageFilter* (*_logos_orig$_ungrouped$GPUImageFilter$initWithVertexShaderFromString$fragmentShaderFromString$)(_LOGOS_SELF_TYPE_INIT GPUImageFilter*, SEL, id, id) _LOGOS_RETURN_RETAINED; static GPUImageFilter* _logos_method$_ungrouped$GPUImageFilter$initWithVertexShaderFromString$fragmentShaderFromString$(_LOGOS_SELF_TYPE_INIT GPUImageFilter*, SEL, id, id) _LOGOS_RETURN_RETAINED; 

#line 1 "/Users/kx/Documents/MonkeyDev_Struct的副本 3/MonkeyDev_StructDylib/Logos/GPUImageFilter.xm"











static void _logos_method$_ungrouped$GPUImageFilter$forceProcessingAtSizeRespectingAspectRatio$(_LOGOS_SELF_TYPE_NORMAL GPUImageFilter* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, struct CGSize arg1) { NSLog(@"-[<GPUImageFilter: %p> forceProcessingAtSizeRespectingAspectRatio:--]", self); _logos_orig$_ungrouped$GPUImageFilter$forceProcessingAtSizeRespectingAspectRatio$(self, _cmd, arg1);
    HBLogDebug(@"iOSER: %s -forceProcessingAtSizeRespectingAspectRatio:%@",object_getClassName(self),NSStringFromCGSize(arg1));
}
static void _logos_method$_ungrouped$GPUImageFilter$forceProcessingAtSize$(_LOGOS_SELF_TYPE_NORMAL GPUImageFilter* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, struct CGSize arg1) { NSLog(@"-[<GPUImageFilter: %p> forceProcessingAtSize:--]", self); _logos_orig$_ungrouped$GPUImageFilter$forceProcessingAtSize$(self, _cmd, arg1);
     HBLogDebug(@"iOSER: %s -forceProcessingAtSize:%@",object_getClassName(self),NSStringFromCGSize(arg1));
}
static void _logos_method$_ungrouped$GPUImageFilter$setInputRotation$atIndex$(_LOGOS_SELF_TYPE_NORMAL GPUImageFilter* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, unsigned long long arg1, long long arg2) { NSLog(@"-[<GPUImageFilter: %p> setInputRotation:%llu atIndex:%lld]", self, arg1, arg2); _logos_orig$_ungrouped$GPUImageFilter$setInputRotation$atIndex$(self, _cmd, arg1, arg2); }



static struct CGPoint _logos_method$_ungrouped$GPUImageFilter$rotatedPoint$forRotation$(_LOGOS_SELF_TYPE_NORMAL GPUImageFilter* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, struct CGPoint arg1, unsigned long long arg2) { NSLog(@"-[<GPUImageFilter: %p> rotatedPoint:-- forRotation:%llu]", self, arg2); struct CGPoint r = _logos_orig$_ungrouped$GPUImageFilter$rotatedPoint$forRotation$(self, _cmd, arg1, arg2); return r; }
static struct CGSize _logos_method$_ungrouped$GPUImageFilter$rotatedSize$forIndex$(_LOGOS_SELF_TYPE_NORMAL GPUImageFilter* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, struct CGSize arg1, long long arg2) { NSLog(@"-[<GPUImageFilter: %p> rotatedSize:-- forIndex:%lld]", self, arg2); struct CGSize r = _logos_orig$_ungrouped$GPUImageFilter$rotatedSize$forIndex$(self, _cmd, arg1, arg2); return r; }






























static void _logos_method$_ungrouped$GPUImageFilter$initializeAttributes(_LOGOS_SELF_TYPE_NORMAL GPUImageFilter* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) { NSLog(@"-[<GPUImageFilter: %p> initializeAttributes]", self); _logos_orig$_ungrouped$GPUImageFilter$initializeAttributes(self, _cmd); }
static GPUImageFilter* _logos_method$_ungrouped$GPUImageFilter$init(_LOGOS_SELF_TYPE_INIT GPUImageFilter* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED { NSLog(@"-[<GPUImageFilter: %p> init]", self); id r = _logos_orig$_ungrouped$GPUImageFilter$init(self, _cmd); HBLogDebug(@" = %@", r); return r; }















static GPUImageFilter* _logos_method$_ungrouped$GPUImageFilter$initWithVertexShaderFromString$fragmentShaderFromString$(_LOGOS_SELF_TYPE_INIT GPUImageFilter* __unused self, SEL __unused _cmd, id arg1, id arg2) _LOGOS_RETURN_RETAINED {
    NSLog(@"-[<GPUImageFilter: %p> initWithVertexShaderFromString:%@ fragmentShaderFromString:%@]", self, arg1, arg2); id r = _logos_orig$_ungrouped$GPUImageFilter$initWithVertexShaderFromString$fragmentShaderFromString$(self, _cmd, arg1, arg2);
    HBLogDebug(@" = %@", r);








    
    return r;
}






static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$GPUImageFilter = objc_getClass("GPUImageFilter"); { MSHookMessageEx(_logos_class$_ungrouped$GPUImageFilter, @selector(forceProcessingAtSizeRespectingAspectRatio:), (IMP)&_logos_method$_ungrouped$GPUImageFilter$forceProcessingAtSizeRespectingAspectRatio$, (IMP*)&_logos_orig$_ungrouped$GPUImageFilter$forceProcessingAtSizeRespectingAspectRatio$);}{ MSHookMessageEx(_logos_class$_ungrouped$GPUImageFilter, @selector(forceProcessingAtSize:), (IMP)&_logos_method$_ungrouped$GPUImageFilter$forceProcessingAtSize$, (IMP*)&_logos_orig$_ungrouped$GPUImageFilter$forceProcessingAtSize$);}{ MSHookMessageEx(_logos_class$_ungrouped$GPUImageFilter, @selector(setInputRotation:atIndex:), (IMP)&_logos_method$_ungrouped$GPUImageFilter$setInputRotation$atIndex$, (IMP*)&_logos_orig$_ungrouped$GPUImageFilter$setInputRotation$atIndex$);}{ MSHookMessageEx(_logos_class$_ungrouped$GPUImageFilter, @selector(rotatedPoint:forRotation:), (IMP)&_logos_method$_ungrouped$GPUImageFilter$rotatedPoint$forRotation$, (IMP*)&_logos_orig$_ungrouped$GPUImageFilter$rotatedPoint$forRotation$);}{ MSHookMessageEx(_logos_class$_ungrouped$GPUImageFilter, @selector(rotatedSize:forIndex:), (IMP)&_logos_method$_ungrouped$GPUImageFilter$rotatedSize$forIndex$, (IMP*)&_logos_orig$_ungrouped$GPUImageFilter$rotatedSize$forIndex$);}{ MSHookMessageEx(_logos_class$_ungrouped$GPUImageFilter, @selector(initializeAttributes), (IMP)&_logos_method$_ungrouped$GPUImageFilter$initializeAttributes, (IMP*)&_logos_orig$_ungrouped$GPUImageFilter$initializeAttributes);}{ MSHookMessageEx(_logos_class$_ungrouped$GPUImageFilter, @selector(init), (IMP)&_logos_method$_ungrouped$GPUImageFilter$init, (IMP*)&_logos_orig$_ungrouped$GPUImageFilter$init);}{ MSHookMessageEx(_logos_class$_ungrouped$GPUImageFilter, @selector(initWithVertexShaderFromString:fragmentShaderFromString:), (IMP)&_logos_method$_ungrouped$GPUImageFilter$initWithVertexShaderFromString$fragmentShaderFromString$, (IMP*)&_logos_orig$_ungrouped$GPUImageFilter$initWithVertexShaderFromString$fragmentShaderFromString$);}} }
#line 91 "/Users/kx/Documents/MonkeyDev_Struct的副本 3/MonkeyDev_StructDylib/Logos/GPUImageFilter.xm"
