//
//  ViewController.h
//  arya
//
//  Created by Me on 6/3/16.
//  Copyright © 2016 Tran. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UIButton *projectName;

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (weak, nonatomic) IBOutlet UITextField *customerName;
@property (weak, nonatomic) IBOutlet UITextField *mobileNo;
@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *referredBy;
@property (weak, nonatomic) IBOutlet UITextField *referenceNo;
@property (weak, nonatomic) IBOutlet UITextField *remarks;
@property (weak, nonatomic) IBOutlet UIButton *submit;
-(IBAction)drop:(id)sender;
@end

