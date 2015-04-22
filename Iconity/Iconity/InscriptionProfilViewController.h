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
- (void) setData:(NSDictionary*)dataFromInscription;

@end
