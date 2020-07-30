//
//  ICloudNotifications.h
//
//  Created by Jonathan Culp <jonathanculp@gmail.com> on 05/28/2020
//  Copyright © 2020 HovelHouseApps. All rights reserved.
//  Unauthorized copying of this file, via any medium is strictly prohibited
//  Proprietary and confidential
//

#import <Foundation/Foundation.h>
#import "Callbacks.h"
#import <UIKit/UIKit.h>

@interface OverrideAppDelegate : NSObject
@property bool HasSwizzledImplementations;
-(void) BeginTheSwizzle;
- (void)application:(UIApplication *)application
didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken;
- (void)application:(UIApplication *)application
didFailToRegisterForRemoteNotificationsWithError:(NSError *)error;
- (void)application:(UIApplication *)application
didReceiveRemoteNotification:(NSDictionary<NSString *,id> *)userInfo;
- (void)application:(UIApplication *)application
didReceiveRemoteNotification:(nonnull NSDictionary *)userInfo fetchCompletionHandler:(nonnull void (^)(UIBackgroundFetchResult))completionHandler;

- (void)baseApplication:(UIApplication *)application
didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken;
- (void)baseApplication:(UIApplication *)application
didFailToRegisterForRemoteNotificationsWithError:(NSError *)error;
- (void)baseApplication:(UIApplication *)application
didReceiveRemoteNotification:(NSDictionary<NSString *,id> *)userInfo;
- (void)baseApplication:(UIApplication *)application
didReceiveRemoteNotification:(nonnull NSDictionary *)userInfo fetchCompletionHandler:(nonnull void (^)(UIBackgroundFetchResult))completionHandler;
@end

extern "C" void RequestNotificationTokenIOS(RegisterForNotificationsCallback callback);
