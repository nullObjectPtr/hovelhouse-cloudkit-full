//
//  CKDatabaseNotification.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKDatabaseNotification.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
//InstanceMethods
//VoidMethods
//Properties

long CKDatabaseNotification_GetPropDatabaseScope(void* ptr)
{
	CKDatabaseNotification* iCKDatabaseNotification = (__bridge CKDatabaseNotification*) ptr;
	CKDatabaseScope val = [iCKDatabaseNotification databaseScope];
	return val;
}


void CKDatabaseNotification_Dispose(void* ptr)
{
    CKDatabaseNotification* val = (__bridge CKDatabaseNotification*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKDatabaseNotification");
}

}
