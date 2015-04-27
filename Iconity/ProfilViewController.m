//
//  ProfilViewController.m
//  Iconity
//
//  Created by Alexandre LEVY on 27/04/15.
//  Copyright (c) 2015 Alexandre LEVY. All rights reserved.
//

#import "ProfilViewController.h"

@interface ProfilViewController ()

@end

@implementation ProfilViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.enregistrer.layer setBorderWidth:2.0];
    [self.enregistrer.layer setBorderColor:[[UIColor colorWithRed:231.0/255.0 green:96.0/255.0 blue:87.0/255.0 alpha:1.0] CGColor]];
    
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    NSString *urlString = [NSString stringWithFormat: @"http://46.105.123.11/iconity/select_users.php?email=%@", [userDefaults valueForKey:@"connexion"]];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *req = [NSMutableURLRequest requestWithURL:url];
    
    NSData *res = [NSURLConnection  sendSynchronousRequest:req returningResponse:nil error:nil];
    NSError *error;
    NSDictionary *tab = [NSJSONSerialization JSONObjectWithData:res options:kNilOptions error:&error];
    
    NSLog(@"%@", tab);
    
    [_prenom setText:[tab objectForKey:@"prenom"]];
    [_nom setText:[tab objectForKey:@"nom"]];
    [_adresse setText:[tab objectForKey:@"adresse"]];
    [_email setText:[tab objectForKey:@"email"]];
    [_postal setText:[tab objectForKey:@"postal"]];
    // Do any additional setup after loading the view.
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)save_data:(id)sender {
    
}
@end
