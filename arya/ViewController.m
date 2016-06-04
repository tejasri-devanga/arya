//
//  ViewController.m
//  arya
//
//  Created by Me on 6/3/16.
//  Copyright © 2016 Tran. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.submit.layer setBorderWidth:2];
    [self.submit.layer setBorderColor:[[UIColor whiteColor]CGColor]];
    self.submit.layer.cornerRadius=5;
    

    self.projecName.layer.cornerRadius=5;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
