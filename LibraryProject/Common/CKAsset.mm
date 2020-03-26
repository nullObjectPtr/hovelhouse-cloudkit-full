//
//  CKAsset.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKAsset.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
void* CKAsset_initWithFileURL(
    void* fileURL,
    void** exceptionPtr)
{
    @try 
    {
        CKAsset* iCKAsset = [[CKAsset alloc] initWithFileURL:(__bridge NSURL*) fileURL];
            return (__bridge_retained void*) iCKAsset;
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

void* CKAsset_GetPropFileURL(void* ptr)
{
	CKAsset* iCKAsset = (__bridge CKAsset*) ptr;
	NSURL* val = [iCKAsset fileURL];
	return (__bridge_retained void*) val;
}


void CKAsset_Dispose(void* ptr)
{
    CKAsset* val = (__bridge CKAsset*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKAsset");
}

}
