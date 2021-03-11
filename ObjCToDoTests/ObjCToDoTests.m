//
//  ObjCToDoTests.m
//  ObjCToDoTests
//
//  Created by Elijah Silang on 3/9/21.
//

#import <XCTest/XCTest.h>
#import "Posts.h"
#import "PostsViewModel.h"
#import "Posts.h"

@interface ObjCToDoTests : XCTestCase
@property (nonatomic, strong) PostsViewModel *pvm;
@end

@implementation ObjCToDoTests


- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.pvm = [PostsViewModel new];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    self.pvm = nil;
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testGetCount {
    [self.pvm getDataWithCompletionHandler:^{
        NSInteger count = [self.pvm getCount];
        // expect 100
        XCTAssertEqual(count, 100);
    }];
}


- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
