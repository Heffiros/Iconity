//
//  ConnexionViewController.h
//  Iconity
//
//  Created by Adadémey Marvin on 22/04/2015.
//  Copyright (c) 2015 Alexandre LEVY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ConnexionViewController : UIViewController


@property (strong, nonatomic) IBOutlet UIButton *FacebookConnect;
@property (strong, nonatomic) IBOutlet UIButton *Connect;
- (IBAction)login:(id)sender;

@end