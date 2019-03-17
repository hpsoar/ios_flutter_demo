//
// Created by Huang Peng on 2019-03-16.
// Copyright (c) 2019 Lattern. All rights reserved.
//

#import "NewsVC.h"


@implementation NewsVC {

}

- (BOOL)hidesBottomBarWhenPushed {
    return NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    FlutterPageParameter *p = [FlutterPageParameter new];
    p.route = @"news_list";

    self.parameter = p;
}

@end