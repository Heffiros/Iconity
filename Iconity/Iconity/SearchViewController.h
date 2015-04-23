//
//  SearchViewController.h
//  Iconity
//
//  Created by Adadémey Marvin on 22/04/2015.
//  Copyright (c) 2015 Alexandre LEVY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *SearchType;
@property (strong, nonatomic) IBOutlet UIButton *SearchTaille;
@property (strong, nonatomic) IBOutlet UIButton *SearchColor;
@property (strong, nonatomic) IBOutlet UIButton *SearchDate;
@property (strong, nonatomic) IBOutlet UILabel *test;
@property (strong, nonatomic) IBOutlet UIPickerView *picker;

@end
NSArray *dataArray;

