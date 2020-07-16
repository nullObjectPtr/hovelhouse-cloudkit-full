//
//  CKRecordZoneSubscription.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKRecordZoneSubscription.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
//InstanceMethods
//VoidMethods
//Properties


void CKRecordZoneSubscription_Dispose(void* ptr)
{
    CKRecordZoneSubscription* val = (__bridge CKRecordZoneSubscription*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKRecordZoneSubscription");
}

}
