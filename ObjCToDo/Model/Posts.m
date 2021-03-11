//
//  Posts.m
//  ObjCToDo
//
//  Created by Elijah Silang on 3/9/21.
//

#import "Posts.h"

@implementation Posts

+(NSMutableArray *)getParsedData:(NSMutableArray *)responseArray {
    
    NSMutableArray *arr = [[NSMutableArray alloc] init];
    
    for (NSDictionary *dictionary in responseArray) {
        
        NSInteger ID = [[dictionary objectForKey:@"id"] integerValue];
        NSInteger userId = [[dictionary objectForKey: @"userId"] integerValue];
        NSString *title = [dictionary objectForKey:@"title"];
        NSString *body = [dictionary objectForKey:@"body"];
        BOOL completed = [dictionary objectForKey:@"completed"];
        
        Posts *posts = [[Posts alloc] init];
        posts.completed = completed;
        posts.ID = ID;
        posts.title = title;
        posts.body = body;
        posts.userId = userId;
        [arr addObject:posts];
    }
    
    return  [NSMutableArray arrayWithArray:arr];
    
    
}
@end
