//
//  ViewController.m
//  IntroToCocoa
//
//  Created by Leo Kwan on 6/21/15.
//  Copyright (c) 2015 Leo Kwan. All rights reserved.
//

#import "ViewController.h"
#import <FontAwesomeKit/FontAwesomeKit.h>
#import <CWStatusBarNotification.h>


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (nonatomic, strong) CWStatusBarNotification *notification;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.notification = [CWStatusBarNotification new];
    self.notification.notificationStyle = CWNotificationStyleNavigationBarNotification;
    [self.notification displayNotificationWithMessage:@"Hello, World!"
                                          forDuration:1.0f];
    
    FAKFontAwesome *starIcon = [FAKFontAwesome starIconWithSize:70];
    [starIcon addAttribute:NSForegroundColorAttributeName value:[UIColor
                                                                 redColor]];
    self.label.attributedText = [starIcon attributedString ];
    


    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
