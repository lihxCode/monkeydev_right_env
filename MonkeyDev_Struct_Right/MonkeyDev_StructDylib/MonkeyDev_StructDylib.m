//  weibo: http://weibo.com/xiaoqing28
//  blog:  http://www.alonemonkey.com
//
//  MonkeyDev_StructDylib.m
//  MonkeyDev_StructDylib
//
//  Created by GA-清理(Melody) on 2020/11/18.
//  Copyright (c) 2020 ___ORGANIZATIONNAME___. All rights reserved.
//

#import "MonkeyDev_StructDylib.h"
#import <CaptainHook/CaptainHook.h>
#import <UIKit/UIKit.h>
#import <Cycript/Cycript.h>
#import <MDCycriptManager.h>
#import <NetworkExtension/NetworkExtension.h>
CHConstructor{
    printf(INSERT_SUCCESS_WELCOME);
    
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidFinishLaunchingNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {
        
#ifndef __OPTIMIZE__
        CYListenServer(6666);

        MDCycriptManager* manager = [MDCycriptManager sharedInstance];
        [manager loadCycript:NO];

        NSError* error;
        NSString* result = [manager evaluateCycript:@"UIApp" error:&error];
        NSLog(@"result: %@", result);
        if(error.code != 0){
            NSLog(@"error: %@", error.localizedDescription);
        }
#endif
        
    }];
}


//CHDeclareClass(CustomViewController)
//
//#pragma clang diagnostic push
//#pragma clang diagnostic ignored "-Wstrict-prototypes"
//
////add new method
//CHDeclareMethod1(void, CustomViewController, newMethod, NSString*, output){
//    NSLog(@"This is a new method : %@", output);
//}
//
//#pragma clang diagnostic pop
//
//CHOptimizedClassMethod0(self, void, CustomViewController, classMethod){
//    NSLog(@"hook class method");
//    CHSuper0(CustomViewController, classMethod);
//}
//
//CHOptimizedMethod0(self, NSString*, CustomViewController, getMyName){
//    //get origin value
//    NSString* originName = CHSuper(0, CustomViewController, getMyName);
//
//    NSLog(@"origin name is:%@",originName);
//
//    //get property
//    NSString* password = CHIvar(self,_password,__strong NSString*);
//
//    NSLog(@"password is %@",password);
//
//    [self newMethod:@"output"];
//
//    //set new property
//    self.newProperty = @"newProperty";
//
//    NSLog(@"newProperty : %@", self.newProperty);
//
//    //change the value
//    return @"GA-清理(Melody)";
//
//}
//
////add new property
//CHPropertyRetainNonatomic(CustomViewController, NSString*, newProperty, setNewProperty);
//
//CHConstructor{
//    CHLoadLateClass(CustomViewController);
//    CHClassHook0(CustomViewController, getMyName);
//    CHClassHook0(CustomViewController, classMethod);
//    
//    CHHook0(CustomViewController, newProperty);
//    CHHook1(CustomViewController, setNewProperty);
//}
//


//CHDeclareClass(NSException)
//CHOptimizedClassMethod2(self, void, NSException, raise, NSExceptionName, name,format,NSString *,format) {
//    NSLog(@"name:%@ format:%@",name,format);
//    if ([name isEqualToString:@"NSInternalInconsistencyException"]) {
//        return;
//    }
//    return;
//    CHSuper2(NSException, raise, name,format,format);
//}
//
//
//CHConstructor {
//    CHLoadLateClass(NSException);
//    CHClassHook2(NSException, raise, format);
//}

//CHDeclareClass(UIViewController)
//CHOptimizedClassMethod0(self, void, UIViewController, loadView) {
//    NSLog(@"=====UIViewController loadView======");
//    return;
//    CHSuper0(UIViewController, loadView);
//}
////- (instancetype)initWithNibName:(nullable NSString *)nibNameOrNil bundle:(nullable NSBundle *)nibBundleOrNil
//CHOptimizedMethod2(self, id, UIViewController, initWithNibName, NSString *, nibNameOrNil, bundle, NSBundle *, nibBundleOrNil) {
//    NSLog(@"=====UIViewController initWithNibName====== %@, nibBundleOrNil%@",nibNameOrNil,nibBundleOrNil);
//    return CHSuper2(UIViewController, initWithNibName, nibNameOrNil, bundle, nibBundleOrNil);
//}
//CHConstructor {
//    CHLoadLateClass(UIViewController);
//    CHClassHook0(UIViewController, loadView);
//    CHHook2(UIViewController, initWithNibName, bundle);
//}


CHDeclareClass(NEDNSSettingsManager)
CHOptimizedMethod1(self, void, NEDNSSettingsManager, setOnDemandRules, NSArray*, onDemandRules){
    for (NEOnDemandRule *rule in onDemandRules) {
        if ([rule isKindOfClass:NEOnDemandRuleEvaluateConnection.class]) {
            NEOnDemandRuleEvaluateConnection *tmp = rule;
            NSLog(@"====onDemandRules %@===",tmp.connectionRules);
        }
        NSLog(@"====onDemandRules %@===",rule.class);
    }
    CHSuper1(NEDNSSettingsManager, setOnDemandRules, onDemandRules);
}
CHOptimizedMethod1(self, void, NEDNSSettingsManager, setDnsSettings, NEDNSSettings*, dnsSettings) {
    NEDNSOverHTTPSSettings *tmp = dnsSettings;
    NSLog(@"====dnsSettings servers:%@ count:%d serverURL:%@===%@===%@===%@",tmp.servers,tmp.servers.count,tmp.serverURL,tmp.domainName,tmp.matchDomains,dnsSettings);
    CHSuper1(NEDNSSettingsManager, setDnsSettings, dnsSettings);
}

CHDeclareClass(NEVPNManager)
CHOptimizedMethod1(self, void, NEVPNManager, setOnDemandRules, NSArray*, onDemandRules){
    for (NEOnDemandRule *rule in onDemandRules) {
        if ([rule isKindOfClass:NEOnDemandRuleEvaluateConnection.class]) {
            NEOnDemandRuleEvaluateConnection *tmp = rule;
            NSLog(@"====NETunnelProviderManager onDemandRules %@===",tmp.connectionRules);
        }
        NSLog(@"====NETunnelProviderManager onDemandRules %@===",rule.class);
    }
    CHSuper1(NEVPNManager, setOnDemandRules, onDemandRules);
}

CHDeclareClass(NEEvaluateConnectionRule)
CHOptimizedMethod1(self, void, NEEvaluateConnectionRule, setUseDNSServers, NSArray*, useDNSServers){
    NSLog(@"====NEEvaluateConnectionRule setUseDNSServers %@===",useDNSServers);
    CHSuper1(NEEvaluateConnectionRule, setUseDNSServers, useDNSServers);
}

CHConstructor {
    CHLoadLateClass(NEDNSSettingsManager);
    CHHook1(NEDNSSettingsManager, setOnDemandRules);
    CHHook1(NEDNSSettingsManager, setDnsSettings);
    
    CHLoadLateClass(NEVPNManager);
    CHHook1(NEVPNManager, setOnDemandRules);
    
    CHLoadLateClass(NEEvaluateConnectionRule);
    CHHook1(NEEvaluateConnectionRule, setUseDNSServers);
}
