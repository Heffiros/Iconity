//
//  InscriptionViewController.h
//  Iconity
//
//  Created by Alexandre LEVY on 22/04/15.
//  Copyright (c) 2015 Alexandre LEVY. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlistModel.h"

@interface InscriptionViewController : UIViewController {
    NSDictionary *data;
}

@property (strong, nonatomic) NSDictionary *data;
@property (strong, nonatomic) IBOutlet UIButton *FacebookConnect;
@property (weak, nonatomic) IBOutlet UITextField *prenom;
@property (weak, nonatomic) IBOutlet UITextField *nom;
@property (weak, nonatomic) IBOutlet UITextField *mail;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (strong, nonatomic) IBOutlet UIButton *suivant;

- (IBAction)NextForm:(id)sender;


@end
