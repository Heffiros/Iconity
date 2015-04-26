//
//  ShowProductViewController.h
//  Iconity
//
//  Created by Alexandre LEVY on 26/04/15.
//  Copyright (c) 2015 Alexandre LEVY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShowProductViewController : UIViewController

@property (assign, nonatomic) int id;
@property (weak, nonatomic) IBOutlet UIButton *location;
- (void) setId:(int)idproduct;
@end
