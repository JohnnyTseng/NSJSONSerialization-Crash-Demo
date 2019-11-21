//
//  AppDelegate.m
//  NSJSONSerializationDemo
//
//  Created by Johnny on 2019/11/21.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSString *string = @"🇹🇲🇧🇹🇨🇫🇨🇳🇩🇰🇪🇨🇪🇷🇵🇬🇧🇷🇧🇧🇵🇾🇧🇭🇧🇸🇵🇦🇵🇸🇵🇰🇯🇵🎌🇧🇪🇯🇲🇮🇱🇮🇨🇨🇦🇬🇦🇲🇵🇰🇵🇶🇦🇨🇺🇹🇼🇸🇿🇳🇪🇳🇮🇳🇵🇧🇫🇬🇵🇬🇹🇼🇫🇬🇲🇧🇾🇵🇳🇱🇹🇮🇶🇮🇷🇮🇸🇱🇮🇭🇺🇮🇩🇮🇳🇩🇯🇰🇮🇰🇬🇹🇻🇩🇲🇩🇴🇹🇬🇦🇬🇦🇮🇦🇴🇦🇩🇹🇰🇧🇲🇪🇹🇪🇸🇪🇭🇭🇷🇱🇾🇭🇳🇬🇷🇧🇳🇸🇦🇧🇿🇧🇯🇬🇶🇿🇼🇦🇲🇦🇼🇸🇽🇳🇱🇧🇶🇲🇿🇨🇲🇬🇪🇬🇳🇬🇼🇫🇯🇱🇰🇸🇰🇸🇮🇨🇱🇵🇭🇨🇮🇻🇳🇰🇾🇹🇯🇸🇳🇸🇨🇷🇸🇦🇹🇦🇽🇪🇪🇮🇪🇲🇨🇲🇩🇲🇺🇪🇺🇲🇲🇱🇧🇲🇽🇯🇪🇲🇴🇦🇺🇷🇼🇱🇺🇸🇻🇦🇿🇹🇿🇳🇬🇻🇪🇧🇩🇿🇲🇵🇼🇱🇻🇹🇴🇹🇱🇫🇷🇫🇴🇬🇫🇹🇫🇵🇫🇧🇦🇧🇼🇵🇷🇵🇱🇬🇮🇰🇪🇫🇮🇦🇪🇦🇷🇴🇲🇦🇫🇩🇿🇦🇱🇷🇺🇧🇬🇿🇦🇬🇸🇦🇶🇰🇷🇸🇸🇰🇿🇹🇩🇰🇭🇧🇴🇨🇨🇰🇼🇽🇰🇹🇳🇯🇴🇺🇸🇻🇮🇦🇸🇬🇧🏴󠁧󠁢󠁥󠁮󠁧󠁿🏴󠁧󠁢󠁳󠁣󠁴󠁿🏴󠁧󠁢󠁷󠁬󠁳󠁿🇮🇴🇻🇬🇲🇷🇬🇭🇭🇰🇨🇬🇨🇩🇨🇴🇨🇷🇪🇬🇨🇰🇨🇼🇸🇬🇳🇨🇸🇱🇨🇭🇸🇪🇻🇺🇮🇹🇧🇱🇻🇨🇵🇲🇸🇹🇰🇳🇸🇲🇸🇭🇨🇽🇱🇨🇾🇪🇰🇲🇵🇹🇫🇰🇨🇻🇲🇳🇲🇸🇲🇪🇧🇮🇬🇾🇱🇦🇩🇪🇲🇦🇳🇴🇬🇬🇬🇱🇬🇩🇹🇭🇭🇹🇺🇬🇺🇦🇺🇾🇺🇿🇷🇪🇵🇪🇳🇦🇳🇿🇳🇺🇸🇴🇸🇧🇲🇶🇲🇱🇲🇾🇲🇰🇲🇼🇾🇹🇲🇭🇲🇬🇲🇹🇲🇻🏳️🏴🏁🚩🏳️‍🌈🇹🇹🇹🇷🇹🇨🇫🇲🇨🇿🇸🇾🇮🇲🇻🇦🇳🇷🇱🇷🇱🇸🇨🇾🇸🇻🇼🇸🇷🇴🇬🇺🇸🇩🇸🇷";
        
    NSString *truncate = [string substringToIndex:1024];
    NSDictionary *dict = @{@"test" : truncate};
        
    NSError *error = nil;
    
    // This line of code will crash on iOS 13 devices with a `-[NSError retain]: message sent to deallocated instance` error
    // It works fine on iOS 10, iOS 11, iOS 12 devices
    NSData *data = [NSJSONSerialization dataWithJSONObject:dict options:0 error:&error];
    NSLog(@"Data: %@, Error: %@", data, error);
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
