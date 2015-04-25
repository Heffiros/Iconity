//
//  InscriptionProfilViewController.h
//  Iconity
//
//  Created by Alexandre LEVY on 22/04/15.
//  Copyright (c) 2015 Alexandre LEVY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InscriptionProfilViewController : UIViewController

@property (strong, nonatomic) NSDictionary *data;
@property (strong, nonatomic) NSDictionary *dataProfil;
- (void) setData:(NSDictionary*)dataFromInscription;

@property (weak, nonatomic) IBOutlet UIButton *Validate;
@property (weak, nonatomic) IBOutlet UITextField *telephone;
@property (weak, nonatomic) IBOutlet UITextField *adresse;
@property (weak, nonatomic) IBOutlet UITextField *postal;
@property (weak, nonatomic) IBOutlet UITextField *ville;
@property (weak, nonatomic) IBOutlet UISwitch *switch1;
@property (weak, nonatomic) IBOutlet UISwitch *switch2;
- (IBAction)Validate:(id)sender;

@end
