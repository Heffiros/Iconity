//
//  Connexion.m
//  Iconity
//
//  Created by Adadémey Marvin on 22/04/2015.
//  Copyright (c) 2015 Alexandre LEVY. All rights reserved.
//

#import "ConnexionViewController.h"
#import "SBJson.h"


@interface ConnexionViewController ()

@end

@implementation ConnexionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.FacebookConnect.layer setBorderWidth:2.0];
    [self.FacebookConnect.layer setBorderColor:[[UIColor colorWithRed:231.0/255.0 green:96.0/255.0 blue:87.0/255.0 alpha:1.0] CGColor]];
    [self.Connect.layer setBorderWidth:2.0];
    [self.Connect.layer setBorderColor:[[UIColor colorWithRed:231.0/255.0 green:96.0/255.0 blue:87.0/255.0 alpha:1.0] CGColor]];
//    NSString* str = formName.text;
//    NSData* theData = [str dataUsingEncoding:NSUTF8StringEncoding];
//    NSString *urlString = @"http://10.104.31.148:8888/connexion.php";
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (IBAction)getDown:(id)sender { //perform get request
//    ServiceConnector *serviceConnector = [[ServiceConnector alloc] init];
//    serviceConnector.delegate = self;
//    [serviceConnector getTest];
//}
//- (IBAction)postDown:(id)sender { //perform post request
//    ServiceConnector *serviceConnector = [[ServiceConnector alloc] init];
//    serviceConnector.delegate = self;
//    [serviceConnector postTest];
//}

@end