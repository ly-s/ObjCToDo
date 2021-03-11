//
//  PostsTableViewCell.h
//  ObjCToDo
//
//  Created by Elijah Silang on 3/9/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PostsTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLbl;
@property (weak, nonatomic) IBOutlet UILabel *bodyLbl;

@end

NS_ASSUME_NONNULL_END
