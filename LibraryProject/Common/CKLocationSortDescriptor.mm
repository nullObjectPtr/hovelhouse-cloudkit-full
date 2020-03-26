//
//  CKLocationSortDescriptor.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKLocationSortDescriptor.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
void* CKLocationSortDescriptor_initWithCoder(
    void* aDecoder,
    void** exceptionPtr)
{
    @try 
    {
        CKLocationSortDescriptor* iCKLocationSortDescriptor = [[CKLocationSortDescriptor alloc] initWithCoder:(__bridge NSCoder*) aDecoder];
            return (__bridge_retained void*) iCKLocationSortDescriptor;
    }
    @catch(NSException* ex)
    {
        *exceptionPtr = (__bridge_retained void*)ex;
    }

    return nil;
}

//InstanceMethods
//VoidMethods
//Properties


void CKLocationSortDescriptor_Dispose(void* ptr)
{
    CKLocationSortDescriptor* val = (__bridge CKLocationSortDescriptor*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKLocationSortDescriptor");
}

}
