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
//@property (nonatomic,strong)NSArray *data;

@end
NSArray *data,*listData;//=[NSArray arrayWithObject:@"A"];
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.submit.layer setBorderWidth:2];
    [self.submit.layer setBorderColor:[[UIColor whiteColor]CGColor]];
    [self.projectName.layer setBorderWidth:1.2];
    [self.projectName.layer setBorderColor:[[UIColor lightTextColor]CGColor]];
    self.submit.layer.cornerRadius=5;
    
    


    self.projectName.layer.cornerRadius=5;
     data=[NSArray arrayWithObjects: @" A",@" B",nil];
    listData=[NSArray arrayWithObjects: @" listA",@" listB",@" listC",@" listD",@" listE",nil];
    
    [self.view addSubview:self.tableView];
    self.tableView.hidden=YES;
    self.listtableView.hidden=YES;

      // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if(tableView.tag==2)
    return [data count];
    else
        return [listData count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(tableView.tag==2){
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"mainCell"];
    
    if(cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"mainCell"];
    }
    UIFont *myFont = [ UIFont fontWithName: @"Arial" size: 14.0 ];
    cell.textLabel.font  = myFont;
    cell.textLabel.text=[data objectAtIndex:indexPath.row];
        return cell;}
    
    else{
        UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"listCell"];
        
        if(cell==nil)
        {
            cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"listCell"];
        }
        UIFont *myFont = [ UIFont fontWithName: @"Arial" size: 14.0 ];
        cell.textLabel.font  = myFont;
        cell.textLabel.text=[listData objectAtIndex:indexPath.row];
        return cell;
    }
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if(tableView.tag==2){
    [self.projectName setTitle:[data objectAtIndex:indexPath.row] forState:UIControlStateNormal];
        self.tableView.hidden=YES;}
    else
    {
        self.listtableView.hidden=YES;
        [self performSegueWithIdentifier:@"next" sender:self];


    }
}

-(IBAction)drop:(id)sender
{
    self.tableView.hidden=NO;
}
-(IBAction)list:(id)sender
{
    self.listtableView.hidden=NO;
}

@end
