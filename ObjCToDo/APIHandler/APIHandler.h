//
//  APIHandler.h
//  ObjCToDo
//
//  Created by Elijah Silang on 3/9/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface APIHandler : NSObject

//singleton shared instance
+ (instancetype)sharedInstance;

- (void)getDataWithCompletionHandler:(void (^)(NSMutableArray * _Nullable array, NSError * _Nullable error))completionHandler;

@end

NS_ASSUME_NONNULL_END
