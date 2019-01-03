//
//  ViewController.m
//  ResponseChainPattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#import "ViewController.h"
#import "DYSChainBoss.h"
#import "DYSChainZhuGuan.h"
#import "DYSChainZongJinLi.h"

#import "DYSRequest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    DYSAbstractChain *zhuGuan = [[DYSChainZhuGuan alloc] initWithName:@"丁哥"];
    DYSAbstractChain *zongJinLi = [[DYSChainZongJinLi alloc] initWithName:@"李经理"];
    DYSAbstractChain *boss = [[DYSChainBoss alloc] initWithName:@"扬总"];

    zhuGuan.superior = zongJinLi;
    zongJinLi.superior = boss;

    DYSRequest *request = [[DYSRequest alloc] init];
    request.requestType = @"请假";
    request.number = 3;

    [zhuGuan dealWithRequest:request];

    request.number = 8;

    [zhuGuan dealWithRequest:request];

    request.number = 20;

    [zhuGuan dealWithRequest:request];
}

@end
