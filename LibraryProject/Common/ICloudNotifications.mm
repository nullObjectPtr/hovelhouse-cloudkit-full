//
//  ICloudNotifications.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "ICloudNotifications.h"
#import "Converters.h"
#import <UserNotifications/UserNotifications.h>

extern "C" {

//ClassMethods

void OnRemoteNotification(CKNotification* cloudKitNotification)
{
    NSLog(@"On Remote Notification");
    if(cloudKitNotification != nil && myCKNotificationHandler != nil)
    {
        NSString* className = NSStringFromClass([cloudKitNotification class]);
        myCKNotificationHandler(
                                (__bridge_retained void*)cloudKitNotification,
                                [className UTF8String]);
    }
}

void SetNotificationHandler(CKNotificationHandler handler)
{
    NSLog(@"Set notification handler...");
    myCKNotificationHandler = handler;
}

//InitMethods
//InstanceMethods
//VoidMethods
//Properties

void* AddNSUbiquityIdentityDidChangeNotificationObserver(NotificationHandler myhandler, void** exceptionPtr)
{
    @try 
    {
        __block id observer;
        observer = [[NSNotificationCenter defaultCenter] addObserverForName:NSUbiquityIdentityDidChangeNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {
            
            myhandler((__bridge_retained void*) observer, (__bridge_retained void*) note);
        }];
        
        return (__bridge_retained void*)observer;
    }
    @catch(NSException* exception)
    {
        *exceptionPtr = (__bridge_retained void*) exception;
    }
    
    return nil;
}

void RemoveNSUbiquityIdentityDidChangeNotificationObserver(void* observerHandle, void** exceptionPtr)
{
    @try 
    {
        [[NSNotificationCenter defaultCenter] removeObserver:(__bridge NSObject*) observerHandle];
    }
    @catch(NSException* exception)
    {
        *exceptionPtr = (__bridge_retained void*) exception;
    }
}

void CloudKitPlugin_SetLogLevel(int InLogLevel)
{
    if(InLogLevel == LogLevelNone)
    {
        NSLog(@"CloudKitPlugin - Log level set to None");
    }
    else if(InLogLevel == LogLevelLog)
    {
        NSLog(@"CloudKitPlugin - Log level set to log");
    }
    else if(InLogLevel == LogLevelVerbose){
        NSLog(@"CloudKitPlugin - Log level set to verbose");
    }
    else if(LogLevelVeryVerbose)
    {
        NSLog(@"CloudKitPlugin - Log level set to very verbose");
    }
    else
    {
        NSLog(@"CloudKitPlugin Invalid log level");
    }

    LogLevel = InLogLevel;
}

long CKObject_GetHashCode(void* ptr)
{
    id object = (__bridge id)(ptr);
    return [object hash];
}

}
