//
//  ViewController.m
//  YYMode_base
//
//  Created by 谢鑫 on 2019/8/16.
//  Copyright © 2019 Shae. All rights reserved.
//

#import "ViewController.h"
#import "WebSite.h"
#import <YYModel.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self YYModelTest];
}
-(void)YYModelTest{
    //创建原始字典
    NSDictionary *dict=@{@"url":@"https://github.com/ShaeZhuJiu",
                         @"name":@"Shae",
                         @"foundedYear":@"2019"
                         };
    //字典转模型
    WebSite *webSite1=[WebSite yy_modelWithDictionary:dict];
    NSLog(@"----字典转模型----");
    NSLog(@"url:%@,name:%@,foundedYear:%@",webSite1.url,webSite1.name,webSite1.foundedYear);
    //模型转json
    NSDictionary *json=[webSite1 yy_modelToJSONObject];
    NSLog(@"---模型转json---");
    NSLog(@"%@",json);
    //json转模型
    WebSite *website2=[WebSite yy_modelWithJSON:json];
    NSLog(@"---json转模型---");
    NSLog(@"%@,%@,%@",website2.url,website2.name,website2.foundedYear);
}

@end
