//
//  ViewController.m
//  MyApplication1
//
//  Created by 佐藤 晶彦 on 2016/08/25.
//  Copyright © 2016年 Akihiko Sato. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@">>>>> viewDidLoad");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tappedButton:(UIButton*)sender {
    
    //NSLog(@">>>>> tappedButton");
    
    // NSInteger型なので、int型にキャスト
    int tag = (int)sender.tag;
    
    // int型のformatは、%dで出力
    NSLog(@"tag : %d", tag);
    
    // NSStringは文字列型
    NSString *string;
    
    if (tag == 0) {
        // tag == 0 の場合
        string = @"Button 1";
    }
    else if (tag == 1) {
        // tag == 0 以外の他の場合で
        string = @"Button 2";
    }
    else {
        // それ以外
        string = @"Hello World";
        [self showDialog];
    }
    
    [label setText:string];
}

- (void)showDialog {
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"title"
                                                   message:@"message"
                                                  delegate:self
                                         cancelButtonTitle:@"Cancel"
                                         otherButtonTitles:@"OK", nil];
    [alert show];
}

#pragma marl - UIAlertViewDelagte
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"tapped : %d",(int)buttonIndex);
}

@end
