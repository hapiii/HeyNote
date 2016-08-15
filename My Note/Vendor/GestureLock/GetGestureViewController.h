//
//  GetGestureViewController.h
//  My Note
//
//  Created by 王强 on 16/8/14.
//  Copyright © 2016年 王强. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GestureLockView.h"


@protocol GestureDelegate <NSObject>

- (void)GestureisRight;

@end

@interface GetGestureViewController : UIViewController<GestureLockViewDelegate>


@property (nonatomic,weak)id<GestureDelegate> delegate;

@end

