//
//  CKRecord.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKRecord.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
void* CKRecord_initWithRecordType(
    const char* recordType,
    void** exceptionPtr)
{
    @try 
    {
        CKRecord* iCKRecord = [[CKRecord alloc] initWithRecordType:[NSString stringWithUTF8String:recordType]];
            return (__bridge_retained void*) iCKRecord;
    }
    @catch(NSException* ex)
    {
        *exceptionPtr = (__bridge_retained void*)ex;
    }

    return nil;
}

void* CKRecord_initWithRecordType_zoneID(
    const char* recordType,
    void* zoneID,
    void** exceptionPtr)
{
    @try 
    {
        CKRecord* iCKRecord = [[CKRecord alloc] initWithRecordType:[NSString stringWithUTF8String:recordType] zoneID:(__bridge CKRecordZoneID*) zoneID];
            return (__bridge_retained void*) iCKRecord;
    }
    @catch(NSException* ex)
    {
        *exceptionPtr = (__bridge_retained void*)ex;
    }

    return nil;
}

void* CKRecord_initWithRecordType_recordID(
    const char* recordType,
    void* recordID,
    void** exceptionPtr)
{
    @try 
    {
        CKRecord* iCKRecord = [[CKRecord alloc] initWithRecordType:[NSString stringWithUTF8String:recordType] recordID:(__bridge CKRecordID*) recordID];
            return (__bridge_retained void*) iCKRecord;
    }
    @catch(NSException* ex)
    {
        *exceptionPtr = (__bridge_retained void*)ex;
    }

    return nil;
}

//InstanceMethods
void CKRecord_allKeys(
    void* ptr,
    const void** buffer,
    long* length
    )
{
    CKRecord* iCKRecord = (__bridge CKRecord*) ptr;
    NSArray<CKRecordFieldKey>* val = [iCKRecord allKeys];

    *buffer = [Converters NSArrayOfStringsToCArrayOfStringPointers:val];
    *length = [val count];
}




void CKRecord_changedKeys(
    void* ptr,
    const void** buffer,
    long* length
    )
{
    CKRecord* iCKRecord = (__bridge CKRecord*) ptr;
    NSArray<CKRecordFieldKey>* val = [iCKRecord changedKeys];

    *buffer = [Converters NSArrayOfStringsToCArrayOfStringPointers:val];
    *length = [val count];
}




void CKRecord_allTokens(
    void* ptr,
    const void** buffer,
    long* length
    )
{
    CKRecord* iCKRecord = (__bridge CKRecord*) ptr;
    NSArray<NSString*>* val = [iCKRecord allTokens];

    *buffer = [Converters NSArrayOfStringsToCArrayOfStringPointers:val];
    *length = [val count];
}




void CKRecord_bufferForKey(
    void* ptr,
    const char* key,
    const void** buffer,
    unsigned long* length
    )
{
    CKRecord* iCKRecord = (__bridge CKRecord*) ptr;
	NSData* data = [iCKRecord objectForKey:[NSString stringWithUTF8String:key]];
    *length = data.length;
    *buffer = [data bytes];
}


const char* CKRecord_stringForKey(
    void* ptr,
    const char* key,
    void** exception
    )
{
    @try {
        CKRecord* iCKRecord = (__bridge CKRecord*) ptr;
        NSString* val = [iCKRecord objectForKey:[NSString stringWithUTF8String:key]];
        return [val UTF8String];
    }
    @catch(NSException* ex)
    {
        *exception = (__bridge_retained void*)ex;
    }
    
    return nil;
}


NSInteger CKRecord_intForKey(
    void* ptr,
    const char* key,
    void** exception
    )
{
    @try
    {
        CKRecord* iCKRecord = (__bridge CKRecord*) ptr;
        NSNumber* val = [iCKRecord objectForKey:[NSString stringWithUTF8String:key]];
        return [val intValue];
    }
    @catch (NSException* ex)
    {
        *exception = (__bridge_retained void*)ex;
    }
    
    return 0;
}


double CKRecord_doubleForKey(
    void* ptr,
    const char* key,
    void** exception
    )
{
    @try
    {
        CKRecord* iCKRecord = (__bridge CKRecord*) ptr;
        NSNumber* val = [iCKRecord objectForKey:[NSString stringWithUTF8String:key]];
        return [val doubleValue];
    }
    @catch(NSException* ex)
    {
        *exception = (__bridge_retained void*)ex;
    }
    
    return 0.0;
}


void* CKRecord_assetForKey(
    void* ptr,
    const char* key
    )
{
    CKRecord* iCKRecord = (__bridge CKRecord*) ptr;
	CKAsset* val = [iCKRecord objectForKey:[NSString stringWithUTF8String:key]];
	return (__bridge_retained void*) val;
}


void* CKRecord_referenceForKey(
    void* ptr,
    const char* key
    )
{
    CKRecord* iCKRecord = (__bridge CKRecord*) ptr;
	CKReference* val = [iCKRecord objectForKey:[NSString stringWithUTF8String:key]];
	return (__bridge_retained void*) val;
}


//VoidMethods
void CKRecord_encodeSystemFieldsWithCoder(
    void* ptr,
    void* coder,
    void** exception
    )
{
	@try 
	{
		CKRecord* iCKRecord = (__bridge CKRecord*) ptr;
	    [iCKRecord encodeSystemFieldsWithCoder:(__bridge NSCoder*) coder];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



void CKRecord_setParentReferenceFromRecord(
    void* ptr,
    void* parentRecord,
    void** exception
    )
{
	@try 
	{
		CKRecord* iCKRecord = (__bridge CKRecord*) ptr;
	    [iCKRecord setParentReferenceFromRecord:(__bridge CKRecord*) parentRecord];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



void CKRecord_setParentReferenceFromRecordID(
    void* ptr,
    void* parentRecordID,
    void** exception
    )
{
	@try 
	{
		CKRecord* iCKRecord = (__bridge CKRecord*) ptr;
	    [iCKRecord setParentReferenceFromRecordID:(__bridge CKRecordID*) parentRecordID];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



void CKRecord_setBuffer_forKey(void* ptr,
                               void* buffer,
                               long bufferLength,
                               const char* key )
{
    CKRecord* iCKRecord = (__bridge CKRecord*) ptr;
    // This copy's the buffer, we don't have to worry about this pointer
    // going away on the managed side
    NSData* data = [NSData dataWithBytes:buffer length:bufferLength];
    [iCKRecord setObject:data forKey:[NSString stringWithUTF8String:key]];
}


void CKRecord_setReference_forKey(
    void* ptr,
    void* referencePtr,
    const char* key,
    void** exception
    )
{
    @try {
        CKRecord* iCKRecord = (__bridge CKRecord*) ptr;
        CKReference* reference = (__bridge CKReference*) referencePtr;
        [iCKRecord setObject:reference forKey:[NSString stringWithUTF8String:key]];
    }
    @catch(NSException* ex)
    {
        *exception = (__bridge_retained void*)ex;
    }
}


void CKRecord_setAsset_forKey(void* ptr,
                              void* assetPtr,
                              const char* key )
{
    CKRecord* iCKRecord = (__bridge CKRecord*) ptr;
    CKAsset* asset = (__bridge CKAsset*) assetPtr;
    [iCKRecord setObject:asset forKey:[NSString stringWithUTF8String:key]];
}


void CKRecord_setString_forKey(void* ptr,
                               const char* obj,
                               const char* key )
{
    CKRecord* iCKRecord = (__bridge CKRecord*) ptr;
    [iCKRecord setObject:[NSString stringWithUTF8String:obj] forKey:[NSString stringWithUTF8String:key]];
}


void CKRecord_setInt_forKey(
                            void* ptr,
                            NSInteger obj,
                            const char* key )
{
    CKRecord* iCKRecord = (__bridge CKRecord*) ptr;
    [iCKRecord setObject:[NSNumber numberWithInteger:obj] forKey:[NSString stringWithUTF8String:key]];
}



void CKRecord_setDouble_forKey(void* ptr,
                               double obj,
                               const char* key )
{
    CKRecord* iCKRecord = (__bridge CKRecord*) ptr;
    [iCKRecord setObject:[NSNumber numberWithDouble:obj] forKey:[NSString stringWithUTF8String:key]];
}


//Properties

void* CKRecord_GetPropRecordID(void* ptr)
{
	CKRecord* iCKRecord = (__bridge CKRecord*) ptr;
	CKRecordID* val = [iCKRecord recordID];
	return (__bridge_retained void*) val;
}

const char* CKRecord_GetPropRecordType(void* ptr)
{
	CKRecord* iCKRecord = (__bridge CKRecord*) ptr;
	CKRecordType val = [iCKRecord recordType];
	return [val UTF8String];
}

double CKRecord_GetPropCreationDate(void* ptr)
{
	CKRecord* iCKRecord = (__bridge CKRecord*) ptr;
	NSDate* val = [iCKRecord creationDate];
	return [val timeIntervalSince1970];
}

void* CKRecord_GetPropCreatorUserRecordID(void* ptr)
{
	CKRecord* iCKRecord = (__bridge CKRecord*) ptr;
	CKRecordID* val = [iCKRecord creatorUserRecordID];
	return (__bridge_retained void*) val;
}

double CKRecord_GetPropModificationDate(void* ptr)
{
	CKRecord* iCKRecord = (__bridge CKRecord*) ptr;
	NSDate* val = [iCKRecord modificationDate];
	return [val timeIntervalSince1970];
}

void* CKRecord_GetPropLastModifiedUserRecordID(void* ptr)
{
	CKRecord* iCKRecord = (__bridge CKRecord*) ptr;
	CKRecordID* val = [iCKRecord lastModifiedUserRecordID];
	return (__bridge_retained void*) val;
}

const char* CKRecord_GetPropRecordChangeTag(void* ptr)
{
	CKRecord* iCKRecord = (__bridge CKRecord*) ptr;
	NSString* val = [iCKRecord recordChangeTag];
	return [val UTF8String];
}

void* CKRecord_GetPropParent(void* ptr)
{
	CKRecord* iCKRecord = (__bridge CKRecord*) ptr;
	CKReference* val = [iCKRecord parent];
	return (__bridge_retained void*) val;
}

void CKRecord_SetPropParent(void* ptr, void* parent, void** exceptionPtr)
{
	@try 
	{
		CKRecord* iCKRecord = (__bridge CKRecord*) ptr;
		[iCKRecord setParent:(__bridge CKReference*) parent];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}

void* CKRecord_GetPropShare(void* ptr)
{
	CKRecord* iCKRecord = (__bridge CKRecord*) ptr;
	CKReference* val = [iCKRecord share];
	return (__bridge_retained void*) val;
}


void CKRecord_Dispose(void* ptr)
{
    CKRecord* val = (__bridge CKRecord*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKRecord");
}

}
