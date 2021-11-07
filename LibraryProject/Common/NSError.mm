//
//  NSError.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "NSError.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
//InstanceMethods

const char* NSError_stringForUserInfoKey(
    void* ptr,
    const char* key,
    void** exception
    )
{
    @try
    {
        NSError* iNSError = (__bridge NSError*) ptr;
        NSString* nsKey = [NSString stringWithUTF8String:key];
        id val = [[iNSError userInfo] valueForKey:nsKey];
        if(val == nil)
        {
            throw [NSException exceptionWithName:@"UserInfoException" reason:[NSString stringWithFormat:@"no such key %@ found in userInfo dictionary", nsKey] userInfo:nil];
        }
        if([val isKindOfClass:[NSString class]] == NO)
        {
            throw [NSException exceptionWithName:@"UserInfoException" reason:[NSString stringWithFormat:@"userInfo value at key %@ is not a string", nsKey] userInfo:nil];
        }
        return [val UTF8String];
    }
    @catch(NSException* ex)
    {
        *exception = (__bridge_retained void*) ex;
    }
    return nil;
}



long NSError_intForUserInfoKey(
    void* ptr,
    const char* key,
    void** exception
    )
{
    @try
    {
        NSError* iNSError = (__bridge NSError*) ptr;
        NSString* nsKey = [NSString stringWithUTF8String:key];
        id val = [[iNSError userInfo] valueForKey:nsKey];
        if(val == nil)
        {
            throw [NSException exceptionWithName:@"UserInfoException" reason:[NSString stringWithFormat:@"no such key %@ found in userInfo dictionary", nsKey] userInfo:nil];
        }
        if([val isKindOfClass:[NSNumber class]] == NO)
            throw [NSException exceptionWithName:@"UserInfoException" reason:[NSString stringWithFormat:@"userInfo value at key %@ is not an integer", nsKey] userInfo:nil];
        return [val intValue];
    }
    @catch(NSException* ex)
    {
        *exception = (__bridge_retained void*) ex;
    }
    return 0;
}



float NSError_floatForUserInfoKey(
    void* ptr,
    const char* key,
    void** exception
    )
{
    @try
    {
        NSError* iNSError = (__bridge NSError*) ptr;
        NSString* nsKey = [NSString stringWithUTF8String:key];
        id val = [[iNSError userInfo] valueForKey:nsKey];
        if(val == nil)
        {
            throw [NSException exceptionWithName:@"UserInfoException" reason:[NSString stringWithFormat:@"no such key %@ found in userInfo dictionary", nsKey] userInfo:nil];
        }
        if([val isKindOfClass:[NSNumber class]] == NO)
            throw [NSException exceptionWithName:@"UserInfoException" reason:[NSString stringWithFormat:@"userInfo value at key %@ is not a float", nsKey] userInfo:nil];
        return [val floatValue];
    }
    @catch(NSException* ex)
    {
        *exception = (__bridge_retained void*) ex;
    }
    return 0.0;
}



void* NSError_recordForUserInfoKey(
    void* ptr,
    const char* key,
    void** exception
    )
{
    @try
    {
        NSError* iNSError = (__bridge NSError*) ptr;
        NSString* nsKey = [NSString stringWithUTF8String:key];
        id val = [[iNSError userInfo] valueForKey:nsKey];
        if(val == nil)
        {
            throw [NSException exceptionWithName:@"UserInfoException" reason:[NSString stringWithFormat:@"no such key %@ found in userInfo dictionary", nsKey] userInfo:nil];
        }
        if([val isKindOfClass:[CKRecord class]] == NO)
            throw [NSException exceptionWithName:@"UserInfoException" reason:[NSString stringWithFormat:@"userInfo value at key %@ is not a CKRecord", nsKey] userInfo:nil];
        return (__bridge_retained void*) val;
    }
    @catch(NSException* ex)
    {
        *exception = (__bridge_retained void*) ex;
    }
    return nil;
}

void* NSError_errorForUserInfoKey(
    void* ptr,
    const char* key,
    void** exception
    )
{
    @try
    {
        NSError* iNSError = (__bridge NSError*) ptr;
        NSString* nsKey = [NSString stringWithUTF8String:key];
        id val = [[iNSError userInfo] valueForKey:nsKey];
        if(val == nil)
        {
            throw [NSException exceptionWithName:@"UserInfoException" reason:[NSString stringWithFormat:@"no such key %@ found in userInfo dictionary", nsKey] userInfo:nil];
        }
        if([val isKindOfClass:[NSError class]] == NO)
            throw [NSException exceptionWithName:@"UserInfoException" reason:[NSString stringWithFormat:@"userInfo value at key %@ is not a NSError", nsKey] userInfo:nil];
        return (__bridge_retained void*) val;
    }
    @catch(NSException* ex)
    {
        *exception = (__bridge_retained void*) ex;
    }
    return nil;
}

void* NSError_partialErrorForItemId(
                                     const void* ptr,
                                     const void* itemIdPtr,
                                     void** exception)
{
    @try
    {
        NSError* iNSError = (__bridge  NSError*) ptr;
        id dict = [[iNSError userInfo] valueForKey:CKPartialErrorsByItemIDKey];
        if(dict == nil)
            return nil;
        id itemId = (__bridge id) itemIdPtr;
        id error = [dict valueForKey:itemId];
        return (__bridge_retained void*) error;
    }
    @catch (NSException *ex) {
        *exception = (__bridge_retained void*) ex;
    }
    
    return nil;
}

const char* NSError_userInfoAsString(
    void* ptr,
    void** exception
    )
{
    @try
    {
        NSError* iNSError = (__bridge NSError*) ptr;
        NSString* val = [NSString stringWithFormat:@"%@",[iNSError userInfo]];
        return [val UTF8String];
    }
    @catch(NSException* ex)
    {
        *exception = (__bridge_retained void*) ex;
    }
    return nil;
}


//VoidMethods
//Properties

NSInteger NSError_GetPropCode(void* ptr)
{
    NSError* iNSError = (__bridge NSError*) ptr;
    NSInteger val = [iNSError code];
    return val;
}

const char* NSError_GetPropLocalizedDescription(void* ptr)
{
    NSError* iNSError = (__bridge NSError*) ptr;
    NSString* val = [iNSError localizedDescription];
    return [val UTF8String];
}

const char* NSError_GetPropLocalizedRecoverySuggestion(void* ptr)
{
    NSError* iNSError = (__bridge NSError*) ptr;
    NSString* val = [iNSError localizedRecoverySuggestion];
    return [val UTF8String];
}

const char* NSError_GetPropLocalizedFailureReason(void* ptr)
{
    NSError* iNSError = (__bridge NSError*) ptr;
    NSString* val = [iNSError localizedFailureReason];
    return [val UTF8String];
}

const char* NSError_GetPropHelpAnchor(void* ptr)
{
    NSError* iNSError = (__bridge NSError*) ptr;
    NSString* val = [iNSError helpAnchor];
    return [val UTF8String];
}
//TODO: PROPERTYSTRINGARRAY

const char* NSError_GetPropDomain(void* ptr)
{
    NSError* iNSError = (__bridge NSError*) ptr;
    NSString* val = [iNSError domain];
    return [val UTF8String];
}


void NSError_Dispose(void* ptr)
{
    NSError* val = (__bridge NSError*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...NSError");
}

}
