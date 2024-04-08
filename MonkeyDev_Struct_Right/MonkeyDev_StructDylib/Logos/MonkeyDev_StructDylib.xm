// See http://iphonedevwiki.net/index.php/Logos

//#import <UIKit/UIKit.h>
//
//%hook NSFileManager
//
//- (NSURL *)containerURLForSecurityApplicationGroupIdentifier:(NSString *)groupIdentifier{
//// method 1: just return a fake name
////    NSString* appGroupName = @"OrigAppGroup";
////    NSString* appGroupName = @"group.com.xxx.yyy.zzz";
////    NSArray *pathList = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
////    NSString *sandboxDocPath = [pathList objectAtIndex:0];
////    NSString *AppGroupPathRoot = sandboxDocPath;
//
//    // method 2: try use real app group path
//    NSString* appGroupName = @"com.widget.kk"; // got by hook real app
//    NSString* AppGroupPathRoot = @"/private/var/mobile/Containers/Shared/AppGroup/";
//
//    NSString* fullAppGroupPath = [AppGroupPathRoot stringByAppendingPathComponent: appGroupName];
//    [self createDirectoryAtPath:fullAppGroupPath withIntermediateDirectories:YES attributes:nil error:nil];
//    NSURL* hookedAppGroupUrl = [NSURL fileURLWithPath:fullAppGroupPath];
//    NSLog(@"groupIdentifier=%@, AppGroupPathRoot=%@, appGroupName=%@, fullAppGroupPath=%@ -> hookedAppGroupUrl=%@", groupIdentifier, AppGroupPathRoot, appGroupName, fullAppGroupPath, hookedAppGroupUrl);
//    return hookedAppGroupUrl;
//}
//
//%end
//
//%hook NSBundle
//- (NSString*)bundleIdentifier {
//    return @"com.widget.kk";
//}
//%end
