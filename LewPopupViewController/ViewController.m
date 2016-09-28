//
//  ViewController.m
//  LewPopupViewController
//
//  Created by pljhonglu on 15/3/4.
//  Copyright (c) 2015年 pljhonglu. All rights reserved.
//

#import "ViewController.h"
#import "LewPopupViewController.h"
#import "PopupView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)popupViewFadeAction:(id)sender{
    PopupView *view = [PopupView defaultPopupView];
    view.parentVC = self;
    
    [self lew_presentPopupView:view animation:[LewPopupViewAnimationFade new] dismissed:^{
        NSLog(@"动画结束");
    } setCenter:CGPointMake(300, 500) cornerAndshadow:NO];// CGPointZero 就是原来的位置
}

- (IBAction)popupViewSlideAction:(id)sender{
    PopupView *view = [PopupView defaultPopupView];
    view.parentVC = self;
    
    LewPopupViewAnimationSlide *animation = [[LewPopupViewAnimationSlide alloc]init];
    animation.type = LewPopupViewAnimationSlideTypeBottomBottom;
    [self lew_presentPopupView:view animation:animation dismissed:^{
        NSLog(@"动画结束");
    } setCenter:CGPointMake(300, 500) cornerAndshadow:NO];
}

- (IBAction)popupViewSpringAction:(id)sender{
    PopupView *view = [PopupView defaultPopupView];
    view.parentVC = self;
    
    [self lew_presentPopupView:view animation:[LewPopupViewAnimationSpring new] dismissed:^{
        NSLog(@"动画结束");
    }setCenter:CGPointMake(50, 300) cornerAndshadow:NO];
}

- (IBAction)popupViewDropAction:(id)sender{
    PopupView *view = [PopupView defaultPopupView];
    view.parentVC = self;
    
    [self lew_presentPopupView:view animation:[LewPopupViewAnimationDrop new] dismissed:^{
        NSLog(@"动画结束");
    }setCenter:CGPointMake(50, 50) cornerAndshadow:NO];
}
@end
