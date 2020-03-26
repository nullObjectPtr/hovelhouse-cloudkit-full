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

extern "C" {

//ClassMethods
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



}
