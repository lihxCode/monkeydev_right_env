#line 1 "/Users/kx/Documents/MonkeyDev_Struct的副本 3/MonkeyDev_StructDylib/Logos/Logos.xm"

#import <UIKit/UIKit.h>
#import <objc/runtime.h>
#import <Foundation/Foundation.h>
#include <stdio.h>


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

@class User; @class SettingsViewController; @class CKContainer; @class NSBundle; @class NSFileManager; 
static id (*_logos_orig$_ungrouped$User$init)(_LOGOS_SELF_TYPE_INIT id, SEL) _LOGOS_RETURN_RETAINED; static id _logos_method$_ungrouped$User$init(_LOGOS_SELF_TYPE_INIT id, SEL) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$SettingsViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SettingsViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL); static NSString * (*_logos_orig$_ungrouped$NSBundle$bundleIdentifier)(_LOGOS_SELF_TYPE_NORMAL NSBundle* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$_ungrouped$NSBundle$bundleIdentifier(_LOGOS_SELF_TYPE_NORMAL NSBundle* _LOGOS_SELF_CONST, SEL); static id (*_logos_meta_orig$_ungrouped$CKContainer$containerWithIdentifier$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id); static id _logos_meta_method$_ungrouped$CKContainer$containerWithIdentifier$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id); static NSURL* (*_logos_orig$_ungrouped$NSFileManager$containerURLForSecurityApplicationGroupIdentifier$)(_LOGOS_SELF_TYPE_NORMAL NSFileManager* _LOGOS_SELF_CONST, SEL, NSString *); static NSURL* _logos_method$_ungrouped$NSFileManager$containerURLForSecurityApplicationGroupIdentifier$(_LOGOS_SELF_TYPE_NORMAL NSFileManager* _LOGOS_SELF_CONST, SEL, NSString *); 

#line 7 "/Users/kx/Documents/MonkeyDev_Struct的副本 3/MonkeyDev_StructDylib/Logos/Logos.xm"


static id _logos_method$_ungrouped$User$init(_LOGOS_SELF_TYPE_INIT id __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    NSLog(@"-[<User: %p> init]", self);
    NSLog(@"Hook user init");
    
            NSLog(@"====Start Scan Class====");
    unsigned int methodCount = 0;
    Ivar *ivars = class_copyIvarList(objc_getClass("_Blocker.User"),&methodCount);
    for(int i = 0; i < methodCount; i++) {
        Ivar ivar = ivars[i];
        const char *name = ivar_getName(ivar);
        const char *type = ivar_getTypeEncoding(ivar);
        NSLog(@"====name:%s type:%s",name,type);
    }
    free(ivars);

    unsigned int count;
    Method *methods = class_copyMethodList(objc_getClass("_Blocker.User"), &count);
    for (int i = 0; i < count; i++) {
        Method method = methods[i];
        SEL selector = method_getName(method);
        NSString *name = NSStringFromSelector(selector);
        NSLog(@"====method_getName:%@",name);
    }
            NSLog(@"====End Scan Class====");
    return _logos_orig$_ungrouped$User$init(self, _cmd);
}





static void _logos_method$_ungrouped$SettingsViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSLog(@"-[<SettingsViewController: %p> viewDidLoad]", self);
    NSLog(@"SettingsViewController viewdidload");
    _logos_orig$_ungrouped$SettingsViewController$viewDidLoad(self, _cmd);
    
}


static __attribute__((constructor)) void _logosLocalCtor_44056092(int __unused argc, char __unused **argv, char __unused **envp) {
    {Class _logos_class$_ungrouped$User = objc_getClass("_Blocker.User"); { MSHookMessageEx(_logos_class$_ungrouped$User, @selector(init), (IMP)&_logos_method$_ungrouped$User$init, (IMP*)&_logos_orig$_ungrouped$User$init);}Class _logos_class$_ungrouped$SettingsViewController = objc_getClass("_Blocker.SettingsViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SettingsViewController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$SettingsViewController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$SettingsViewController$viewDidLoad);}Class _logos_class$_ungrouped$NSBundle = objc_getClass("NSBundle"); { MSHookMessageEx(_logos_class$_ungrouped$NSBundle, @selector(bundleIdentifier), (IMP)&_logos_method$_ungrouped$NSBundle$bundleIdentifier, (IMP*)&_logos_orig$_ungrouped$NSBundle$bundleIdentifier);}Class _logos_class$_ungrouped$CKContainer = objc_getClass("CKContainer"); Class _logos_metaclass$_ungrouped$CKContainer = object_getClass(_logos_class$_ungrouped$CKContainer); { MSHookMessageEx(_logos_metaclass$_ungrouped$CKContainer, @selector(containerWithIdentifier:), (IMP)&_logos_meta_method$_ungrouped$CKContainer$containerWithIdentifier$, (IMP*)&_logos_meta_orig$_ungrouped$CKContainer$containerWithIdentifier$);}Class _logos_class$_ungrouped$NSFileManager = objc_getClass("NSFileManager"); { MSHookMessageEx(_logos_class$_ungrouped$NSFileManager, @selector(containerURLForSecurityApplicationGroupIdentifier:), (IMP)&_logos_method$_ungrouped$NSFileManager$containerURLForSecurityApplicationGroupIdentifier$, (IMP*)&_logos_orig$_ungrouped$NSFileManager$containerURLForSecurityApplicationGroupIdentifier$);}}
    
}




    static NSString * _logos_method$_ungrouped$NSBundle$bundleIdentifier(_LOGOS_SELF_TYPE_NORMAL NSBundle* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
        NSString *ret = _logos_orig$_ungrouped$NSBundle$bundleIdentifier(self, _cmd);
        if ([ret isEqual: @"ai.animato"]) {
            return @"ai.animato.callsam";
        }
        NSLog(@"=====bundleIdentifier:%@",ret);
        return ret;
    }



static id _logos_meta_method$_ungrouped$CKContainer$containerWithIdentifier$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id iden) {
    NSLog(@"+[<CKContainer: %p> containerWithIdentifier:%@]", self, iden);
    NSLog(@"HOOK iCloudContainer Para:%@",iden);
    return _logos_meta_orig$_ungrouped$CKContainer$containerWithIdentifier$(self, _cmd, @"iCloud.ai.animato.callsam");
}





static NSURL* _logos_method$_ungrouped$NSFileManager$containerURLForSecurityApplicationGroupIdentifier$(_LOGOS_SELF_TYPE_NORMAL NSFileManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSString * groupIdentifier) {
    NSLog(@"-[<NSFileManager: %p> containerURLForSecurityApplicationGroupIdentifier:%@]", self, groupIdentifier);
    NSLog(@"HOOK Container Para:%@",groupIdentifier);
    
    NSURL *url = _logos_orig$_ungrouped$NSFileManager$containerURLForSecurityApplicationGroupIdentifier$(self, _cmd, @"groupai.animato.callsam");
        NSLog(@"====url Path%@",url.path);
    return url;
}



















