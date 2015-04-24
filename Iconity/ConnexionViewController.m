//
//  Connexion.m
//  Iconity
//
//  Created by Adadémey Marvin on 22/04/2015.
//  Copyright (c) 2015 Alexandre LEVY. All rights reserved.
//

#import "ConnexionViewController.h"

@interface ConnexionViewController ()
@property (strong, nonatomic) IBOutlet UITextField *adresseEmail;
@property (strong, nonatomic) IBOutlet UITextField *password;

@end

@implementation ConnexionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.FacebookConnect.layer setBorderWidth:2.0];
    [self.FacebookConnect.layer setBorderColor:[[UIColor colorWithRed:231.0/255.0 green:96.0/255.0 blue:87.0/255.0 alpha:1.0] CGColor]];
    [self.Connect.layer setBorderWidth:2.0];
    [self.Connect.layer setBorderColor:[[UIColor colorWithRed:231.0/255.0 green:96.0/255.0 blue:87.0/255.0 alpha:1.0] CGColor]];

}

- (void) connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    NSHTTPURLResponse* httpResponse = (NSHTTPURLResponse*)response;
    NSInteger code = [httpResponse statusCode];
        NSLog(@"%ld",(long)code);
}


//- (IBAction)login:(id)sender {
//    
//    
//    NSString *post =[NSString stringWithFormat:@"User=%@&Password=%@",_adresseEmail.text, _password.text];
//    
//    NSString *hostStr = @"http://10.104.31.148:8888/connexion.php?";
//    hostStr = [hostStr stringByAppendingString:post];
//    NSData *dataURL =  [NSData dataWithContentsOfURL: [ NSURL URLWithString: hostStr ]];
//    NSString *serverOutput = [[NSString alloc] initWithData:dataURL encoding: NSASCIIStringEncoding];
//    //test
//    NSURLRequest *request = [NSURLRequest requestWithURL: [NSURL URLWithString:@"10.104.31.148:8888/connexion.php"]];
//    
//    
//    
//
////    NSHTTPURLResponse* httpResponse = (NSHTTPURLResponse*)request;
////
////    NSInteger responseStatusCode = [httpResponse statusCode];
////    
//
//    if([serverOutput isEqualToString:@"403"]){
////    if (responseStatusCode == 403) {
////test
//        NSLog(@"%s", "OK");
//        NSLog(@"%s", "Le serveur Output est de");
//        NSLog(@"%@",[[NSString alloc] initWithData:dataURL encoding: NSASCIIStringEncoding]);
//        NSLog(@"%@",_adresseEmail);
//        NSLog(@"%@",_password);
//        UIAlertView *alertsuccess = [[UIAlertView alloc] initWithTitle:@"success" message:@"You are authorized"
//                                                              delegate:self cancelButtonTitle:@"No" otherButtonTitles:@"Yes", nil];
//        [alertsuccess show];
////        [alertsuccess release];
////        [alertsuccess autorelease];
//
//        
//        
//    } else {
//        UIAlertView *alertsuccess = [[UIAlertView alloc] initWithTitle:@"Fail" message:@"Invalid Access"
//                                                              delegate:self cancelButtonTitle:@"No" otherButtonTitles:@"Yes", nil];
//        NSLog(@"%s", "NOPE");
//        NSLog(@"%s", "Le serveur Output est de");
//        NSLog(@"%@",[[NSString alloc] initWithData:dataURL encoding: NSASCIIStringEncoding]);
//        NSLog(@"%@",serverOutput);
//        NSLog(@"%@",hostStr);
////        NSLog(@"%@",request);
//
//
//        [alertsuccess show];
////        [alertsuccess release];
//        
//    }
//    
////    loginIndicator.hidden = FALSE;
////    [loginIndicator startAnimating];
////    loginButton.enabled = FALSE;
//}

- (IBAction)login:(id)sender {
        NSInteger success = 0;
        NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"http://10.104.31.148:8888/connexion.php?User=%@&Password=%@",_adresseEmail.text, _password.text]];
        
        NSString *post =[[NSString alloc] initWithFormat:@"%@", url];
        
        NSLog(@"PostData: %@",post);
        
        NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
        
        NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
        
        // Set request type
        [request setHTTPMethod:@"POST"];
        [request addValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
        [request setHTTPBody:postData];
        
        NSError *error = [[NSError alloc] init];
        
        NSHTTPURLResponse *response = nil;
        
        // Send the request
        NSData *urlData=[NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
        
        NSLog(@"Response: %@", request);
        
        NSLog(@"Response code: %ld", (long)[response statusCode]);
        
        if ([response statusCode] >= 200 && [response statusCode] < 300){
            NSLog(@"Success: %ld",(long)success);
            NSLog(@"Success: %@", urlData);
            UIAlertView *alertsuccess = [[UIAlertView alloc] initWithTitle:@"Vous êtes maintenant connecté" message:nil
                                                                  delegate:self cancelButtonTitle:@"OK"
                                                         otherButtonTitles: nil];
            [alertsuccess show];

        }
    
        else{
            NSLog(@"login failed: %ld", (long)[response statusCode]);
            UIAlertView *alertsuccess = [[UIAlertView alloc] initWithTitle:@"Adresse mail ou mot de passe incorrect." message:@"Veuillez vérifier vos identifiants."
                                                                  delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [alertsuccess show];

        }
    }




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end