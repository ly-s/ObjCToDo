//
//  PostsViewModel.m
//  ObjCToDo
//
//  Created by Elijah Silang on 3/9/21.
//

#import "PostsViewModel.h"
#import "APIHandler.h"

@implementation PostsViewModel



- (void)getDataWithCompletionHandler:(void (^)(void))completionHandler {
    [[APIHandler sharedInstance] getDataWithCompletionHandler:^(NSMutableArray * _Nullable array, NSError * _Nullable error) {
        self.array = array;
        self.error = error;
    }];
}


- (NSInteger)getCount {
    return self.array.count;
}

@end
