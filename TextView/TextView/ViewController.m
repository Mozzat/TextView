//
//  ViewController.m
//  TextView
//
//  Created by ebadu on 2018/1/29.
//  Copyright © 2018年 ebadu. All rights reserved.
//

#import "ViewController.h"
#import "TextView.h"
#import <Masonry/Masonry.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    TextView *textView = [[TextView alloc]init];
    textView.text = @"你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好";
    textView.backgroundColor = [UIColor redColor];
    textView.textColor = [UIColor blackColor];
    [self.view addSubview:textView];
    
    [textView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerX.centerY.equalTo(self.view);
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(100);
        
    }];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
