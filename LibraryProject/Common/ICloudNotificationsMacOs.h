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
#import <AppKit/AppKit.h>

@interface OverrideAppDelegate : NSObject
-(void) BeginTheSwizzle;
- (void)application:(NSApplication *)application
didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken;
- (void)application:(NSApplication *)application
didFailToRegisterForRemoteNotificationsWithError:(NSError *)error;
- (void)application:(NSApplication *)application
didReceiveRemoteNotification:(NSDictionary<NSString *,id> *)userInfo;

- (void)baseApplication:(NSApplication *)application
didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken;
- (void)baseApplication:(NSApplication *)application
didFailToRegisterForRemoteNotificationsWithError:(NSError *)error;
- (void)baseApplication:(NSApplication *)application
didReceiveRemoteNotification:(NSDictionary<NSString *,id> *)userInfo;
@end

extern "C" void RequestNotificationTokenMacOs(RegisterForNotificationsCallback callback);
