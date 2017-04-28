//
//  ViewController.m
//  SWNetworkHelper
//
//  Created by shiwei on 2017/3/10.
//  Copyright © 2017年 shiwei. All rights reserved.
//  有什么疑问欢迎简书留言 : http://www.jianshu.com/u/be350860b931
//  或者新浪博客: http://i.blog.sina.com.cn/blogprofile/index.php?com=1

#import "ViewController.h"
#import "SWNetworkHelper.h"


static NSString *const dataUrl = @"http://dc.yzijie.com/index.php?m=api&c=Wallet&a=group";

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [SWNetworkHelper POST:dataUrl parameters:@{
                                               @"t" : @"1",
                                               @"token" : @"43"
                                               }success:^(id responseObject) {
        NSLog(@"%@", responseObject);
                                               } failure:^(NSError *error) {
                    NSLog(@"%@", error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
