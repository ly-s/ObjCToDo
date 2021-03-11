//
//  ViewController.h
//  ObjCToDo
//
//  Created by Elijah Silang on 3/9/21.
//

#import <UIKit/UIKit.h>
#import "PostsViewModel.h"

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) PostsViewModel *vm;

@property (nonatomic, assign) NSInteger tblCount;


// tableView methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath;
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath;

// button IBAction
- (IBAction)getButtonPressed:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UITableView *tblView;

@end

