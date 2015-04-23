//
//  SearchViewController.m
//  Iconity
//
//  Created by Adadémey Marvin on 22/04/2015.
//  Copyright (c) 2015 Alexandre LEVY. All rights reserved.
//

#import "SearchViewController.h"


@interface SearchViewController ()


@end

@implementation SearchViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.SearchTaille.layer setBorderWidth:2.0];
    [self.SearchTaille.layer setBorderColor:[[UIColor blackColor] CGColor]];
    [self.SearchColor.layer setBorderWidth:2.0];
    [self.SearchColor.layer setBorderColor:[[UIColor blackColor] CGColor]];
    [self.SearchType.layer setBorderWidth:2.0];
    [self.SearchType.layer setBorderColor:[[UIColor blackColor] CGColor]];
    [self.SearchDate.layer setBorderWidth:2.0];
    [self.SearchDate.layer setBorderColor:[[UIColor blackColor] CGColor]];
//    dataArray = [[NSArray alloc]initWithObjects:@"test1",@"test2",@"test3" ,nil];
//    _picker.delegate = self;
//    UIPickerView * picker = [UIPickerView new];
//    picker.delegate = self;
//    picker.dataSource = self;
//    picker.showsSelectionIndicator = YES;
//    [self.view addSubview:picker];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
//*/
//- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
//    return 1;
//}
//
//- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
//    return 3;
//}
//
//- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
//    NSString * title = nil;
//    switch(row) {
//        case 0:
//            title = @"a";
//            break;
//        case 1:
//            title = @"b";
//            break;
//        case 2:
//            title = @"c";
//            break;
//    }
//    return title;
//}



@end
