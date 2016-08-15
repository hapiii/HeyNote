//
//  GetGestureViewController.m
//  My Note
//
//  Created by 王强 on 16/8/14.
//  Copyright © 2016年 王强. All rights reserved.
//

#import "GetGestureViewController.h"

@interface GetGestureViewController (){
    UILabel *tipLabel;
}

@end

@implementation GetGestureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self WQcreateLockView];
   
}

- (void)WQcreateLockView{
    GestureLockView *lockView = [[GestureLockView alloc]initWithFrame:CGRectMake(0,100,ScreenWidth, ScreenHeight-200)];
    lockView.delegate = self;
    [self.view addSubview:lockView];
    
  
    
    tipLabel = ({
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 50, ScreenWidth, 50)];
        label.backgroundColor = [UIColor clearColor];
        label.text = @"请输入您的手势密码";
        label.textColor =[UIColor blackColor];
        label.font = [UIFont systemFontOfSize:21];
        label.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:label];
                          label;
        });
                        


    
    
}

- (void)lockView:(GestureLockView *)lockView didFinishPath:(NSString *)path shotImage:(UIImage *)shotImage
{
//    if (path.length < 4) {
//      
//    }
//    
//    if (self.firstLockPath.length) {
//        if ([path isEqualToString:self.firstLockPath]) {
//            self.tipLabel.textColor = TextColor;
//            self.tipLabel.text = @"手势密码设置成功";
//            
//            [self SaveLockPath:path];
//            [NSThread sleepForTimeInterval:1.2f];
//            [self dismissViewControllerAnimated:YES completion:nil];
//            if (_noticBlock) {
//                _noticBlock(NO);
//            }
//        }else{
//            self.tipLabel.textColor = [UIColor redColor];;
//            self.tipLabel.text = @"两次密码输入不一致";
//            self.resetButton.hidden = NO;
//        }
//    }else{
//        self.firstLockPath = [path copy];
//        self.lockViewShotView.image  = shotImage;
//    }
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *str =[defaults objectForKey:@"LockPath"];
    if ([path isEqualToString:str]) {
        NSLog(@"密码正确");
        tipLabel.text = @"密码✅，请稍后";
        [_delegate GestureisRight];
        [self dismissViewControllerAnimated:YES completion:nil];
    }else{
        NSLog(@"密码❌");
        tipLabel.text = @"密码❌，请重试";
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
