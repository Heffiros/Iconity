//
//  RecuperationViewController.h
//  Iconity
//
//  Created by Adadémey Marvin on 22/04/2015.
//  Copyright (c) 2015 Alexandre LEVY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecuperationViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *Recuperer;
- (IBAction)send_mdp:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *mail;

@end