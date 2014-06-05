//
//  ViewController.m
//  textFontDemoByButton
//
//  Created by Roger on 2014/6/5.
//  Copyright (c) 2014年 Roger. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    IBOutlet UIButton *btnT;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (void)viewWillAppear:(BOOL)animated{
    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc] initWithString:@"Hello, button!"];
    [attrString setAttributes:@{NSFontAttributeName:[UIFont fontWithName:@"Helvetica-Oblique" size:15.0],NSForegroundColorAttributeName:[UIColor blueColor],NSUnderlineStyleAttributeName:[NSNumber numberWithInteger:NSUnderlineStyleSingle]} range:NSMakeRange(0,[attrString length])];
    [btnT setAttributedTitle:attrString forState:UIControlStateNormal];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
