//
//  Converters.h
//  HHCloudKit
//
//  Created by Jonathan on 1/22/20.
//  Copyright © 2020 Unity Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>


NS_ASSUME_NONNULL_BEGIN

@interface Converters : NSObject
+(NSArray*) BridgedArray: (void*_Nonnull*_Nullable) arr withCount:(long) count;
+(NSArray*) StringArray: (const char**)arr withCount:(long) count;
+(void) NSArrayToRetainedCArray: (NSArray*) array withBuffer:(void* _Nonnull[_Nonnull]) buffer;
+(const void**) NSArrayToUnretainedCArray: (NSArray*) array;
+(const void**) NSArrayToRetainedCArray: (NSArray*) array;
+(const char**) NSArrayOfStringsToCArrayOfStringPointers: (NSArray<NSString*>*) array;
+(void**) NSDictionaryToValuesArray: (NSDictionary*) dictionary;
+(void**) NSDictionaryToKeysArray: (NSDictionary*) dictionary;
+(const long*) ToTypeIdArray:(NSArray<id>*) array;
+(long) GetTypeId:(id) item;
+(NSString*) CKRecordSavePolicyToString:(CKRecordSavePolicy) savePolicy;
+(NSString*) CKDatabaseScopeToString:(CKDatabaseScope) databaseScope;
+(NSString*) NSQualityOfServiceToString:(NSQualityOfService) qualityOfService;
@end

NS_ASSUME_NONNULL_END

extern int LogLevel;
extern int LogLevelNone;
extern int LogLevelLog;
extern int LogLevelVerbose;
extern int LogLevelVeryVerbose;
