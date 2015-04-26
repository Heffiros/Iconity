//
//  RecuperationViewController.m
//  Iconity
//
//  Created by Adadémey Marvin on 22/04/2015.
//  Copyright (c) 2015 Alexandre LEVY. All rights reserved.
//

#import "RecuperationViewController.h"

@interface RecuperationViewController ()

@end

@implementation RecuperationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.Recuperer.layer setBorderWidth:2.0];
    [self.Recuperer.layer setBorderColor:[[UIColor colorWithRed:231.0/255.0 green:96.0/255.0 blue:87.0/255.0 alpha:1.0] CGColor]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)send_mdp:(id)sender {
    
    NSString *urlString = [NSString stringWithFormat: @"http://46.105.123.11/iconity/check_password.php?&email=%@", _mail.text];
    NSURL *url = [NSURL URLWithString:urlString];
    NSLog(@"%@", urlString);
    
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    NSData *data = [NSURLConnection sendSynchronousRequest:req returningResponse:nil error:nil];
    NSString *rep = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    NSLog(@"%@", rep);
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Recuperation Mdp" message:[NSString stringWithFormat: @"Votre mot de pass est : %@", rep] delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
    
}
@end