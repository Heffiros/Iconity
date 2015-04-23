//
//  ConnexionViewController.h
//  Iconity
//
//  Created by Adadémey Marvin on 22/04/2015.
//  Copyright (c) 2015 Alexandre LEVY. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "ServiceConnector.h"


@interface ConnexionViewController : UIViewController


@property (strong, nonatomic) IBOutlet UIButton *FacebookConnect;
@property (strong, nonatomic) IBOutlet UIButton *Connect;
@property (weak, nonatomic) IBOutlet UITextView *output;
@property (weak, nonatomic) IBOutlet UITextField *value1TextField;
@property (weak, nonatomic) IBOutlet UITextField *value2TextField;
- (IBAction)getDown:(id)sender;
- (IBAction)postDown:(id)sender;

@end