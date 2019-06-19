//
//  ViewController.m
//  SGRichViewExample
//
//  Created by kingsic on 2019/1/12.
//  Copyright © 2019年 kingsic. All rights reserved.
//

#import "ViewController.h"
#import "SGRichView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    SGTagsViewConfigure *configure = [SGTagsViewConfigure tagsViewConfigure];
    configure.tagsViewStyle = SGTagsViewStyleEquable;
    configure.cornerRadius = 15;
    configure.borderWidth = 2;
//    configure.column = 4;
//    configure.multipleSelected = YES;
    
    SGTagsView *tagsView = [SGTagsView tagsViewWithFrame:CGRectMake(0, 200, self.view.frame.size.width, 50) configure:configure];
    tagsView.backgroundColor = [UIColor greenColor];
    tagsView.tags = @[@"iPhone XS", @"iPhone XS Max", @"iPhone X", @"iPhone XR", @"iPhone 8", @"iPhone 8P"];
    [self.view addSubview:tagsView];
    tagsView.selectedBlock = ^(SGTagsView * _Nonnull tagsView, NSString *tag, NSInteger index) {
        NSLog(@"%@ - - %ld", tag, index);
    };
    tagsView.multipleSelectedBlock = ^(SGTagsView * _Nonnull tagsView, NSArray * _Nonnull tags, NSArray * _Nonnull indexs) {
        NSLog(@"%@ - - %@", tags, indexs);
    };
}


@end