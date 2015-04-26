//
//  SearchViewController.h
//  Iconity
//
//  Created by Adadémey Marvin on 22/04/2015.
//  Copyright (c) 2015 Alexandre LEVY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIScrollView *scroll;
@property (assign, nonatomic) int id;
- (void) redirect:sender;
@end
