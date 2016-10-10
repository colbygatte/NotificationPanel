//
//  ViewController.m
//  Notification
//
//  Created by Colby Gatte on 10/9/16.
//  Copyright © 2016 Colby Gatte. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    notif = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    [self.view addSubview:notif];
    notif.backgroundColor = [UIColor grayColor];
    
    UISwipeGestureRecognizer *swipeUp = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeUp:)];
    swipeUp.direction = UISwipeGestureRecognizerDirectionUp;
    
    UISwipeGestureRecognizer *swipeDown = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeDown:)];
    swipeDown.direction = UISwipeGestureRecognizerDirectionDown;
    
    [self.view addGestureRecognizer: swipeUp];
    [self.view addGestureRecognizer: swipeDown];
    
}


- (void) swipeUp: (UIGestureRecognizer *) recognizer {
    [UIView animateWithDuration:1.0 animations:^{
        notif.frame = CGRectMake(0, 0 - self.view.layer.bounds.size.height, notif.bounds.size.width, notif.bounds.size.height);
        notif.backgroundColor = [UIColor redColor];
       
    }];
     
     
}

-(void) swipeDown: (UIGestureRecognizer *) recognizer {
    [UIView animateWithDuration:1.0 animations:^{
        notif.frame = CGRectMake(0, 0, notif.bounds.size.width, notif.bounds.size.height);
        notif.backgroundColor = [UIColor grayColor];
        
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
