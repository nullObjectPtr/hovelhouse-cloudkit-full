//
//  Converters.h
//  HHCloudKit
//
//  Created by Jonathan on 1/22/20.
//  Copyright © 2020 Unity Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>

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
@end

NS_ASSUME_NONNULL_END
