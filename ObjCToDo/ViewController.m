//
//  ViewController.m
//  ObjCToDo
//
//  Created by Elijah Silang on 3/9/21.
//

#import "ViewController.h"
#import "PostsViewModel.h"
#import "PostsTableViewCell.h"
#import "Posts.h"


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.vm = [PostsViewModel new];
    [self.vm getDataWithCompletionHandler:^{
        [self.tblView reloadData];
    }];
    self.tblCount = 0;
}


- (IBAction)getButtonPressed:(UIButton *)sender {
    self.tblCount = self.vm.getCount;
    [self.tblView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.tblCount;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PostsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"postsCell"];
    Posts *postsObj = self.vm.array[indexPath.row];
    cell.titleLbl.text = postsObj.title;
    cell.bodyLbl.text = postsObj.body;
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return true;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.vm.array removeObjectAtIndex:indexPath.row];
        [self.tblView reloadData];
    }
}

@end
