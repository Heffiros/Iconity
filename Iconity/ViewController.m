//
//  ViewController.m
//  Iconity
//
//  Created by Alexandre LEVY on 22/04/15.
//  Copyright (c) 2015 Alexandre LEVY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Style Top Bar
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:231.0/255.0 green:96.0/255.0 blue:87.0/255.0 alpha:1.0];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    
    [self.sinscrire.layer setBorderWidth:2.0];
    [self.sinscrire.layer setBorderColor:[[UIColor whiteColor] CGColor]];
    [self.seconnecter.layer setBorderWidth:2.0];
    [self.seconnecter.layer setBorderColor:[[UIColor whiteColor] CGColor]];

    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
