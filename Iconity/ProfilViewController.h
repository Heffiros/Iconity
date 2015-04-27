//
//  ProfilViewController.h
//  Iconity
//
//  Created by Alexandre LEVY on 27/04/15.
//  Copyright (c) 2015 Alexandre LEVY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProfilViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *prenom;
@property (weak, nonatomic) IBOutlet UITextField *nom;
@property (weak, nonatomic) IBOutlet UITextField *adresse;
@property (weak, nonatomic) IBOutlet UIButton *enregistrer;
@property (weak, nonatomic) IBOutlet UITextField *postal;

@property (weak, nonatomic) IBOutlet UITextField *email;
- (IBAction)save_data:(id)sender;
@end
