//
//  ICloudNotifications.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "ICloudNotifications.h"
#import "ICloudNotificationsMacOs.h"
#import "Converters.h"
#import "Swizzler.h"
#import <AppKit/AppKit.h>

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
    if([self HasSwizzledImplementations] == NO)
    {
        Class unityAppController = NSClassFromString(@"PlayerAppDelegate");
        
        Class overrideAppController = OverrideAppDelegate.class;
        
        [EPPZSwizzler setLogging:YES];

        [EPPZSwizzler replaceAppDelegateMethod:@selector(application:didRegisterForRemoteNotificationsWithDeviceToken:) targetingClass:unityAppController fromClass:overrideAppController savingOriginalTo:@selector(baseApplication:didRegisterForRemoteNotificationsWithDeviceToken:)];
        
        [EPPZSwizzler
         replaceAppDelegateMethod:@selector(application:didFailToRegisterForRemoteNotificationsWithError:) targetingClass:unityAppController fromClass:overrideAppController savingOriginalTo:@selector(baseApplication:didFailToRegisterForRemoteNotificationsWithError:)];
        
        [EPPZSwizzler
         replaceAppDelegateMethod:@selector(application:didReceiveRemoteNotification:) targetingClass:unityAppController fromClass:overrideAppController savingOriginalTo:@selector(baseApplication:didReceiveRemoteNotification:)];
    
        [self setHasSwizzledImplementations:YES];
    }

    [NSApp registerForRemoteNotifications];
}

- (void)application:(NSApplication *)application
didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
{
    if([self respondsToSelector:@selector(baseApplication:didRegisterForRemoteNotificationsWithDeviceToken:)])
    {
        [self baseApplication:application didRegisterForRemoteNotificationsWithDeviceToken:deviceToken];
    }
    
    NSLog(@"[HovelHouse - CloudKit] successfully registered for remote notifications with token: %@", deviceToken);
    
    if(_registerForNotificationsCallback == nil)
        return;
    
    const void* buffer = [deviceToken bytes];
    _registerForNotificationsCallback(buffer, [deviceToken length], nil);
}

- (void)application:(NSApplication *)application
didFailToRegisterForRemoteNotificationsWithError:(NSError *)error
{
    if([self respondsToSelector:@selector(baseApplication:didFailToRegisterForRemoteNotificationsWithError:)])
    {
        [self baseApplication:application didFailToRegisterForRemoteNotificationsWithError:error];
    }
    
    NSLog(@"[HovelHouse - CloudKit] failed to register for remote notifications: %@", [error localizedDescription]);
    
    if(_registerForNotificationsCallback == nil)
        return;
    
    _registerForNotificationsCallback(nil, 0, (__bridge_retained void*)error);
}

- (void)application:(NSApplication *)application
didReceiveRemoteNotification:(NSDictionary<NSString *,id> *)userInfo
{
    if([self respondsToSelector:@selector(baseApplication:didReceiveRemoteNotification:)])
    {
        [self baseApplication:application didReceiveRemoteNotification:userInfo];
    }
    
    CKNotification *cloudKitNotification = [CKNotification notificationFromRemoteNotificationDictionary:userInfo];
    
    OnRemoteNotification(cloudKitNotification);
}

- (void)baseApplication:(NSApplication *)application
didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
{
    // Empty stub - swizzled implementation gets added here
}

- (void)baseApplication:(NSApplication *)application
didFailToRegisterForRemoteNotificationsWithError:(NSError *)error
{
    // Empty stub - swizzled implementation gets added here
}

- (void)baseApplication:(NSApplication *)application
didReceiveRemoteNotification:(NSDictionary<NSString *,id> *)userInfo
{
    // Empty stub - swizzled implementation gets added here
}

@end

extern "C" {

void RequestNotificationTokenMacOs(RegisterForNotificationsCallback _callback)
{
    NSLog(@"[HovelHouse-CloudKit] request notification token");
    [[OverrideAppDelegate Instance] BeginTheSwizzle];
    _registerForNotificationsCallback = _callback;
}

}
