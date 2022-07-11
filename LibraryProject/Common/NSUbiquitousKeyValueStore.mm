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
bool NSUbiquitousKeyValueStore_boolForKey(
    void* ptr,
    const char* aKey,
    void** exception
    )
{
	@try 
	{
		NSUbiquitousKeyValueStore* iNSUbiquitousKeyValueStore = (__bridge NSUbiquitousKeyValueStore*) ptr;
	    BOOL val = [iNSUbiquitousKeyValueStore boolForKey:[NSString stringWithUTF8String:aKey]];
	    return val;
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	return NO;
}



long NSUbiquitousKeyValueStore_longLongForKey(
    void* ptr,
    const char* aKey,
    void** exception
    )
{
	@try 
	{
		NSUbiquitousKeyValueStore* iNSUbiquitousKeyValueStore = (__bridge NSUbiquitousKeyValueStore*) ptr;
	    long val = [iNSUbiquitousKeyValueStore longLongForKey:[NSString stringWithUTF8String:aKey]];
	    return val;
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	return 0;
}



double NSUbiquitousKeyValueStore_doubleForKey(
    void* ptr,
    const char* aKey,
    void** exception
    )
{
	@try 
	{
		NSUbiquitousKeyValueStore* iNSUbiquitousKeyValueStore = (__bridge NSUbiquitousKeyValueStore*) ptr;
	    double val = [iNSUbiquitousKeyValueStore doubleForKey:[NSString stringWithUTF8String:aKey]];
	    return val;
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	return 0.0;
}



const char* NSUbiquitousKeyValueStore_stringForKey(
    void* ptr,
    const char* aKey,
    void** exception
    )
{
	@try 
	{
		NSUbiquitousKeyValueStore* iNSUbiquitousKeyValueStore = (__bridge NSUbiquitousKeyValueStore*) ptr;
	    NSString* val = [iNSUbiquitousKeyValueStore stringForKey:[NSString stringWithUTF8String:aKey]];
	    return [val UTF8String];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	return nil;
}



void NSUbiquitousKeyValueStore_setBool_forKey(
    void* ptr,
    bool value,
    const char* aKey,
    void** exception
    )
{
	@try 
	{
		NSUbiquitousKeyValueStore* iNSUbiquitousKeyValueStore = (__bridge NSUbiquitousKeyValueStore*) ptr;
	    [iNSUbiquitousKeyValueStore setBool:value forKey:[NSString stringWithUTF8String:aKey]];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



void NSUbiquitousKeyValueStore_setDouble_forKey(
    void* ptr,
    double value,
    const char* aKey,
    void** exception
    )
{
	@try 
	{
		NSUbiquitousKeyValueStore* iNSUbiquitousKeyValueStore = (__bridge NSUbiquitousKeyValueStore*) ptr;
	    [iNSUbiquitousKeyValueStore setDouble:value forKey:[NSString stringWithUTF8String:aKey]];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



void NSUbiquitousKeyValueStore_setLongLong_forKey(
    void* ptr,
    long value,
    const char* aKey,
    void** exception
    )
{
	@try 
	{
		NSUbiquitousKeyValueStore* iNSUbiquitousKeyValueStore = (__bridge NSUbiquitousKeyValueStore*) ptr;
	    [iNSUbiquitousKeyValueStore setLongLong:value forKey:[NSString stringWithUTF8String:aKey]];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



void NSUbiquitousKeyValueStore_setString_forKey(
    void* ptr,
    const char* aString,
    const char* aKey,
    void** exception
    )
{
	@try 
	{
		NSUbiquitousKeyValueStore* iNSUbiquitousKeyValueStore = (__bridge NSUbiquitousKeyValueStore*) ptr;
	    [iNSUbiquitousKeyValueStore setString:[NSString stringWithUTF8String:aString] forKey:[NSString stringWithUTF8String:aKey]];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



void NSUbiquitousKeyValueStore_removeObjectForKey(
    void* ptr,
    const char* aKey,
    void** exception
    )
{
	@try 
	{
		NSUbiquitousKeyValueStore* iNSUbiquitousKeyValueStore = (__bridge NSUbiquitousKeyValueStore*) ptr;
	    [iNSUbiquitousKeyValueStore removeObjectForKey:[NSString stringWithUTF8String:aKey]];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



bool NSUbiquitousKeyValueStore_synchronize(
    void* ptr,
    void** exception
    )
{
	@try 
	{
		NSUbiquitousKeyValueStore* iNSUbiquitousKeyValueStore = (__bridge NSUbiquitousKeyValueStore*) ptr;
	    BOOL val = [iNSUbiquitousKeyValueStore synchronize];
	    return val;
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	return NO;
}

void NSUbiquitousKeyValueStore_getKeys(
    void* ptr,
    const void** buffer,
    long* length,
    void** exception
    )
{
    @try
    {
        NSUbiquitousKeyValueStore* iNSUbiquitousKeyValueStore = (__bridge NSUbiquitousKeyValueStore*) ptr;
        
        id val = [[iNSUbiquitousKeyValueStore dictionaryRepresentation] allKeys];
        *buffer = [Converters NSArrayOfStringsToCArrayOfStringPointers:val];
        *length = [val count];
    }
    @catch(NSException* ex)
    {
        *exception = (__bridge_retained void*) ex;
    }
}

void NSUbiquitousKeyValueStore_bufferForKey(
    void* ptr,
    const char* key,
    const void** buffer,
    unsigned long* length,
    void** exception
    )
{
    @try {
        NSUbiquitousKeyValueStore* iCKRecord = (__bridge NSUbiquitousKeyValueStore*) ptr;
        NSData* data = [iCKRecord objectForKey:[NSString stringWithUTF8String:key]];
        *length = data.length;
        *buffer = [data bytes];
    }
    @catch(NSException* ex)
    {
        *exception = (__bridge_retained void*) ex;
    }
}


void* AddNSUbiquitousKeyValueStoreDidChangeExternallyNotificationObserver(NSUbiquitousKeyValueStoreDidChangeExternallyCallback myhandler)
{
    __block id unsub;
    unsub = [[NSNotificationCenter defaultCenter] addObserverForName:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {
       
        NSDictionary *userInfo = [note userInfo];
        NSNumber *reason = [userInfo objectForKey:NSUbiquitousKeyValueStoreChangeReasonKey];
        
        NSArray *changedKeys = [userInfo objectForKey:NSUbiquitousKeyValueStoreChangedKeysKey];
        
        NSInteger count = [changedKeys count];
        const char** changedKeysStrings = [Converters NSArrayOfStringsToCArrayOfStringPointers:changedKeys];
        
        myhandler((__bridge_retained void*)unsub, [reason integerValue], changedKeysStrings, count);
        
        free(changedKeysStrings);
    }];
    
    return (__bridge_retained void*) unsub;
}


void RemoveNSUbiquitousKeyValueStoreDidChangeExternallyNotificationObserver(void* ptr)
{
    NSObject* unsub = (__bridge NSObject*) ptr;
    [[NSNotificationCenter defaultCenter] removeObserver:unsub];
}


//VoidMethods
//Properties

void* NSUbiquitousKeyValueStore_GetPropDefaultStore()
{
	NSUbiquitousKeyValueStore* val = [NSUbiquitousKeyValueStore defaultStore];
	return (__bridge_retained void*) val;
}


void NSUbiquitousKeyValueStore_Dispose(void* ptr)
{
    NSUbiquitousKeyValueStore* val = (__bridge NSUbiquitousKeyValueStore*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...NSUbiquitousKeyValueStore");
}

}
