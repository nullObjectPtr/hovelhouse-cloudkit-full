//
//  NSUbiquitousKeyValueStore.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "NSUbiquitousKeyValueStore.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
//InstanceMethods
bool UbiquityIdentityToken_isEqual(
    void* lhs,
    void* rhs
    )
{
    return [(__bridge NSObject*) lhs isEqual:(__bridge NSObject*) rhs];
}

void UbiquityIdentityToken_Dispose(void* ptr)
{
    NSObject* val = (__bridge NSObject*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...UbiquityIdentityToken");
}

}
