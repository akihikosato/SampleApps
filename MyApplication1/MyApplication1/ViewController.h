//
//  ViewController.h
//  MyApplication1
//
//  Created by 佐藤 晶彦 on 2016/08/25.
//  Copyright © 2016年 Akihiko Sato. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UIAlertViewDelegate>
{
    IBOutlet UILabel  *label;
    IBOutlet UIButton *button1;
    IBOutlet UIButton *button2;
    IBOutlet UIButton *button3;
}

@end

