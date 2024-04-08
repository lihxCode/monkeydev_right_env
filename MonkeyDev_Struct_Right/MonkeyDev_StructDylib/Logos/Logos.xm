
#import <UIKit/UIKit.h>
#import <objc/runtime.h>
#import <Foundation/Foundation.h>
#include <stdio.h>

%hook User

- (id)init {
    %log;
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
    return %orig;
}

%end

%hook SettingsViewController

- (void)viewDidLoad {
    %log;
    NSLog(@"SettingsViewController viewdidload");
    %orig;
    
}
%end

%ctor {
    %init(User = objc_getClass("_Blocker.User"),SettingsViewController = objc_getClass("_Blocker.SettingsViewController"));
    
}



%hook NSBundle
    -(NSString *)bundleIdentifier {
        NSString *ret = %orig;
        if ([ret isEqual: @"ai.animato"]) {
            return @"ai.animato.callsam";
        }
        NSLog(@"=====bundleIdentifier:%@",ret);
        return ret;
    }
%end

%hook CKContainer
+ (id)containerWithIdentifier:(id)iden {
    %log;
    NSLog(@"HOOK iCloudContainer Para:%@",iden);
    return %orig(@"iCloud.ai.animato.callsam");
}

%end

%hook NSFileManager

- (NSURL*)containerURLForSecurityApplicationGroupIdentifier:(NSString *)groupIdentifier {
    %log;
    NSLog(@"HOOK Container Para:%@",groupIdentifier);
    
    NSURL *url = %orig(@"groupai.animato.callsam");
        NSLog(@"====url Path%@",url.path);
    return url;
}

%end


//%hook FIRRemoteConfig
//
//- (id)configValueForKey:(NSString *)key {
//    id data = %orig(key);
//    /*String *content = @"{\"isActive\":true,\"paywallType\":\"inapp_paywall\",\"obeyPaywallDesignParams\":false,\"offerId\":\"offer_6\",\"design\":5,\"close\":true,\"closeSecs\":0,\"packagePaymentTrigger\":false,\"displayReviewText\":false,\"isFreeOfferPopupDisplayed\":false,\"selectedProduct\":-1}";*/
////    if ([key isEqualToString: @"inAppPaywall"]) {
////        [data setValue:content forKey:@"stringValue"];
////    }
//    NSLog(@"Remote Config Key:%@ data: %@  source: %d \n",key, [data valueForKey:@"stringValue"], [[data valueForKey:@"source"] integerValue]);
//    return data;
//}
//
//%end


