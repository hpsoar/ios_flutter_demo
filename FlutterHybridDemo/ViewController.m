//
//  ViewController.m
//  FlutterHybridDemo
//
//  Created by Huang Peng on 2019/3/15.
//  Copyright © 2019 Lattern. All rights reserved.
//

#import "ViewController.h"
#import "FlutterHybridDemo-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(10, 100, 100, 44)];
    [btn setTitle:@"open flutter" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:btn];
    
    [btn addTarget:self action:@selector(open) forControlEvents:UIControlEventTouchUpInside];
}

- (void)open {
    FlutterViewController *vc = [[HBFlutterVC alloc] init];
    
    [vc setInitialRoute:@"main"];

    [self.navigationController pushViewController:vc animated:YES];
}


@end
