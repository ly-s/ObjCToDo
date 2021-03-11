//
//  PostsViewModel.h
//  ObjCToDo
//
//  Created by Elijah Silang on 3/9/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PostsViewModel : NSObject

@property (nonatomic, strong) NSMutableArray *array;
@property (nonatomic, strong) NSError *error;

- (void)getDataWithCompletionHandler:(void (^)(void))completionHandler;
- (NSInteger)getCount;

@end

NS_ASSUME_NONNULL_END
