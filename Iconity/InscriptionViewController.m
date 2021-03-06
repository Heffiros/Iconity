//
//  InscriptionViewController.m
//  Iconity
//
//  Created by Alexandre LEVY on 22/04/15.
//  Copyright (c) 2015 Alexandre LEVY. All rights reserved.
//

#import "InscriptionViewController.h"

@interface InscriptionViewController ()

@end

@implementation InscriptionViewController
@synthesize data;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.FacebookConnect.layer setBorderWidth:2.0];
    [self.FacebookConnect.layer setBorderColor:[[UIColor colorWithRed:231.0/255.0 green:96.0/255.0 blue:87.0/255.0 alpha:1.0] CGColor]];
    [self.suivant.layer setBorderWidth:2.0];
    [self.suivant.layer setBorderColor:[[UIColor colorWithRed:231.0/255.0 green:96.0/255.0 blue:87.0/255.0 alpha:1.0] CGColor]];
    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
    [self.view addSubview:loginButton];
    loginButton.frame = CGRectOffset(loginButton.frame, (self.view.center.x), 125);
    [self.view addSubview:loginButton];
    [loginButton setBackgroundColor:[UIColor blackColor] ];
    if ([FBSDKAccessToken currentAccessToken]){
        NSLog(@"%@",[FBSDKAccessToken currentAccessToken]);
        
    }
    self.loginButton.readPermissions = @[@"public_profile",@"email",@"user_friends"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)NextForm:(id)sender {
    NSLog(@"%@",[FBSDKAccessToken currentAccessToken]);

    self.data = @{
                          @"prenom" : self.prenom.text,
                          @"nom" : self.nom.text,
                          @"mail" : self.mail.text,
                          @"mdp" : self.password.text,
                        
    };

}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSLog(@"prepareForSegue: %@", segue.identifier);
  
    if ([segue.identifier isEqualToString:@"NextPartInscription"]) {
        InscriptionProfilViewController *vc = [segue destinationViewController];
        [vc setData:self.data];
    //    [segue.destinationViewController setData:self.data];
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
