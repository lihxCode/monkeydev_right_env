//  weibo: http://weibo.com/xiaoqing28
//  blog:  http://www.alonemonkey.com
//
//  MonkeyDev_StructDylib.h
//  MonkeyDev_StructDylib
//
//  Created by GA-清理(Melody) on 2020/11/18.
//  Copyright (c) 2020 ___ORGANIZATIONNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>

#define INSERT_SUCCESS_WELCOME "               🎉!!！congratulations!!！🎉\n👍----------------insert dylib success----------------👍\n"

@interface CustomViewController

@property (nonatomic, copy) NSString* newProperty;

+ (void)classMethod;

- (NSString*)getMyName;

- (void)newMethod:(NSString*) output;

@end
