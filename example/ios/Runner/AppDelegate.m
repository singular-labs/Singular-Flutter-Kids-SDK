#import "AppDelegate.h"
#import "GeneratedPluginRegistrant.h"
#import <singular_flutter_kids_sdk/SingularSDK.h>
#import <singular_flutter_kids_sdk/SingularAppDelegate.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [GeneratedPluginRegistrant registerWithRegistry:self];
    NSLog(@"didFinishLaunchingWithOptions");
    
    // Override point for customization after application launch.
    [SingularAppDelegate shared].launchOptions = launchOptions;
    return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

- (BOOL)application:(UIApplication *)application continueUserActivity:(NSUserActivity *)userActivity restorationHandler:(void (^)(NSArray<id<UIUserActivityRestoring>> *restorableObjects))restorationHandler{
    NSLog(@"continueUserActivity");
    [[SingularAppDelegate shared] continueUserActivity:userActivity restorationHandler:restorationHandler];
    return [super application:application continueUserActivity:userActivity restorationHandler:restorationHandler];
}

- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
    [[SingularAppDelegate shared] handleOpenUrl:url options:options];
    return [super application:app openURL:url options:options];
}

@end
