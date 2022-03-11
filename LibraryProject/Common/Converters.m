//
//  Converters.m
//  HHCloudKit
//
//  Created by Jonathan on 1/22/20.
//  Copyright © 2020 Unity Technologies. All rights reserved.
//

#import "Converters.h"

int LogLevel = 0;
int LogLevelNone = 0;
int LogLevelLog = 1;
int LogLevelVerbose = 2;
int LogLevelVeryVerbose;

@implementation Converters
+(NSArray*) BridgedArray:(void **)arr2 withCount:(long)count
{
    if(arr2 == nil)
        return nil;
    
    NSMutableArray* arr = [[NSMutableArray alloc] init];
    for(int i = 0; i < count; i++)
    {
        id rec = (__bridge id) arr2[i];
        [arr addObject:rec];
    }
    return arr;
}

+(NSArray*) StringArray:(const char**)arr2 withCount:(long)count
{
    if(arr2 == nil)
        return nil;
    
    NSMutableArray* arr = [[NSMutableArray alloc] init];
    for(int i = 0; i < count; i++)
    {
        NSString* str = [NSString stringWithUTF8String:arr2[i]];
        [arr addObject:str];
    }
    return arr;
}

+(void) NSArrayToRetainedCArray:(NSArray*) array withBuffer:(void **)buffer
{
    if(array == nil)
    {
        *buffer = nil;
        return;
    }
    
    int count = 0;
    
    for (id key in array) {
        buffer[count] = (__bridge_retained void*)key;
        count++;
    }
}

+(const void**) NSArrayToUnretainedCArray:(NSArray<id>*) array
{
    if(array == nil)
        return nil;
    
    long _count = [array count];
    const void** _buffer = (void**) malloc(sizeof(void*) * _count);
    
    long i = 0;
    for (id item in array) {
        _buffer[i] = (__bridge void*) item;
        i++;
    }
    
    return _buffer;
}

+(const void**) NSArrayToRetainedCArray:(NSArray<id>*) array
{
    if(array == nil)
        return nil;
    
    long _count = [array count];
    void** _buffer = (void**) malloc(sizeof(void*) * _count);
    
    long i = 0;
    for (id item in array) {
        _buffer[i] = (__bridge_retained void*) item;
        i++;
    }
    
    return _buffer;
}

+(const char**) NSArrayOfStringsToCArrayOfStringPointers:(NSArray<NSString*>*) array
{
    if(array == nil)
        return nil;
    
    long _count = [array count];
    const char** _buffer = (const char**) malloc(sizeof(char*) * _count);
    
    long i = 0;
    for (id item in array) {
        _buffer[i] = [item UTF8String];
        i++;
    }
    
    return _buffer;
}

+(void**) NSDictionaryToValuesArray: (NSDictionary*) dictionary
{
    if(dictionary == nil)
        return nil;

    long _count = [dictionary count];
    const void** _buffer = (void**) malloc(sizeof(void*) * _count);

    long i = 0;
    for (id key in [dictionary allKeys]) {
        _buffer[i] = (__bridge_retained void*) dictionary[key];
        i++;
    }

    return _buffer;
}

+(void**) NSDictionaryToKeysArray: (NSDictionary*) dictionary
{
    if(dictionary == nil)
        return nil;

    long _count = [dictionary count];

    const void** _buffer = (void**) malloc(sizeof(void*) * _count);

    long i = 0;
    for (id key in [dictionary allKeys]) {
        _buffer[i] = (__bridge_retained void*) key;
        i++;
    }

    return _buffer;
}

///Converts an array of id's to an array of numbers based on the type of the pointer
+(const long*) ToTypeIdArray:(NSArray<id>*) array
{
    long _count = [array count];
    long* _buffer = (long*) malloc(sizeof(long) * _count);
    
    long i = 0;
    for (id item in array) {
        long typeId = [Converters GetTypeId:item];
        _buffer[i] = typeId;
        i++;
    }
    
    return _buffer;
}

+(long) GetTypeId:(id) item
{
    if(item == nil)
        return 0;
    if([item isKindOfClass:[NSNumber class]])
        return 1;
    if([item isKindOfClass:[NSString class]])
        return 2;
    if([item isKindOfClass:[NSDate class]])
        return 3;
    if([item isKindOfClass:[NSData class]])
        return 4;
    if([item isKindOfClass:[NSArray class]])
        return 5;
    if([item isKindOfClass:[NSDictionary class]])
        return 6;
    
    return -1;
}

+(NSString*) CKRecordSavePolicyToString:(CKRecordSavePolicy)savePolicy
{
    switch(savePolicy)
    {
        case CKRecordSaveIfServerRecordUnchanged:
            return @"CKRecordSaveIfServerRecordUnchanged";
        case CKRecordSaveChangedKeys:
            return @"CKRecordSaveChangedKeys";
        case CKRecordSaveAllKeys:
            return @"CKRecordSaveAllKeys";
    }
    
    return @"";
}

+(NSString*) CKDatabaseScopeToString:(CKDatabaseScope)databaseScope
{
    switch(databaseScope)
    {
        case CKDatabaseScopePublic:
            return @"CKDatabaseScopePublic";
        case CKDatabaseScopeShared:
            return @"CKDatabaseScopeShared";
        case CKDatabaseScopePrivate:
            return @"CKDatabaseScopePrivate";
    }
    
    return @"";
}

+(NSString*) NSQualityOfServiceToString:(NSQualityOfService)qualityOfService
{
    switch (qualityOfService) {
        case NSQualityOfServiceUtility:
            return @"NSQualityOfServiceUtility";
        case NSQualityOfServiceUserInitiated:
            return @"NSQualityOfServiceUserInitiated";
        case NSQualityOfServiceDefault:
            return @"NSQualityOfServiceDefault";
        case NSQualityOfServiceBackground:
            return @"NSQualityOfServiceBackground";
        case NSQualityOfServiceUserInteractive:
            return @"NSQualityOfServiceUserInteractive";
    }
    
    return @"";
}

@end
