//
//  Posts.h
//  ObjCToDo
//
//  Created by Elijah Silang on 3/9/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Posts : NSObject
@property (nonatomic, assign) NSInteger userId;
@property (nonatomic, assign) NSInteger ID;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *body;
@property (nonatomic, assign) BOOL completed;

+(NSMutableArray *)getParsedData:(NSMutableArray *)responseArray;
@end

NS_ASSUME_NONNULL_END
