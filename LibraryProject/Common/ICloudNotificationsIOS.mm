//
//  ICloudNotifications.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "ICloudNotifications.h"
#import "ICloudNotificationsIOS.h"
#import "Converters.h"
#import "Swizzler.h"
#import <UIKit/UIKit.h>

__strong OverrideAppDelegate* _instance;
static RegisterForNotificationsCallback _registerForNotificationsCallback;

@implementation OverrideAppDelegate

+(OverrideAppDelegate*) Instance
{
    if(_instance == nil)
    {
        _instance = [[OverrideAppDelegate alloc] init];
    }
    
    return _instance;
}

-(void) BeginTheSwizzle
{
    Class unityAppController = NSClassFromString(@"UnityAppController");
    Class overrideAppController = OverrideAppDelegate.class;
    
    [EPPZSwizzler setLogging:YES];
    
    [EPPZSwizzler replaceAppDelegateMethod:@selector(application:didRegisterForRemoteNotificationsWithDeviceToken:) targetingClass:unityAppController fromClass:overrideAppController savingOriginalTo:@selector(baseApplication:didRegisterForRemoteNotificationsWithDeviceToken:)];
    
    [EPPZSwizzler
     replaceAppDelegateMethod:@selector(application:didFailToRegisterForRemoteNotificationsWithError:) targetingClass:unityAppController fromClass:overrideAppController savingOriginalTo:@selector(baseApplication:didFailToRegisterForRemoteNotificationsWithError:)];
    
    [EPPZSwizzler
     replaceAppDelegateMethod:@selector(application:didReceiveRemoteNotification:) targetingClass:unityAppController fromClass:overrideAppController savingOriginalTo:@selector(baseApplication:didReceiveRemoteNotification:)];

    NSLog(@"[HovelHouse - CloudKit] registering for remote notifications");
    [[UIApplication sharedApplication] registerForRemoteNotifications];
}

- (void)application:(UIApplication*)application
didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
{
    if([self respondsToSelector:@selector(baseApplication:didRegisterForRemoteNotificationsWithDeviceToken:)])
    {
        [self baseApplication:application didRegisterForRemoteNotificationsWithDeviceToken:deviceToken];
    }
    
    NSLog(@"[HovelHouse - CloudKit] - successfully registered for remote notifications. Token: %@", deviceToken);
    
    if(_registerForNotificationsCallback == nil)
        return;
    
    const void* buffer = [deviceToken bytes];
    _registerForNotificationsCallback(buffer, [deviceToken length], nil);
}

- (void)application:(UIApplication*)application
didFailToRegisterForRemoteNotificationsWithError:(NSError *)error
{
    if([self respondsToSelector:@selector(baseApplication:didFailToRegisterForRemoteNotificationsWithError:)])
    {
        [self baseApplication:application didFailToRegisterForRemoteNotificationsWithError:error];
    }
    
    NSLog(@"HovelHouse CloudKit - didFailToRegisterForRemoteNotificationsWithError %@", [error localizedDescription]);
    
    if(_registerForNotificationsCallback == nil)
        return;
    
    _registerForNotificationsCallback(nil, 0, (__bridge_retained void*)error);
}

- (void)application:(UIApplication *)application
didReceiveRemoteNotification:(NSDictionary<NSString *,id> *)userInfo
{
    if([self respondsToSelector:@selector(baseApplication:didReceiveRemoteNotification:)])
    {
        [self baseApplication:application didReceiveRemoteNotification:userInfo];
    }
    
    CKNotification *cloudKitNotification = [CKNotification notificationFromRemoteNotificationDictionary:userInfo];
    
    OnRemoteNotification(cloudKitNotification);
}

- (void)baseApplication:(UIApplication*)application
didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
{
    // Swizzled implementation gets copied here
}

- (void)baseApplication:(UIApplication*)application
didFailToRegisterForRemoteNotificationsWithError:(NSError *)error
{
    // Swilzzled implementation gets copied here
}

- (void)baseApplication:(UIApplication *)application
didReceiveRemoteNotification:(NSDictionary<NSString *,id> *)userInfo
{
    // Swizzled implementation gets copied here
}

@end

extern "C" {

void RequestNotificationTokenIOS(RegisterForNotificationsCallback _callback)
{
    [[OverrideAppDelegate Instance] BeginTheSwizzle];
    _registerForNotificationsCallback = _callback;
}

}
