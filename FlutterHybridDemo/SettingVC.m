//
// Created by Huang Peng on 2019-03-15.
// Copyright (c) 2019 Lattern. All rights reserved.
//

#import "SettingVC.h"
#import "FlutterPageParameter.h"


@implementation SettingVC {

}

- (BOOL)hidesBottomBarWhenPushed {
    return NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    FlutterPageParameter *p = [FlutterPageParameter new];
    p.route = @"main";

    self.parameter = p;
}

@end