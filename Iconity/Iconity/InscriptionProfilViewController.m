//
//  InscriptionProfilViewController.m
//  Iconity
//
//  Created by Alexandre LEVY on 22/04/15.
//  Copyright (c) 2015 Alexandre LEVY. All rights reserved.
//

#import "InscriptionProfilViewController.h"

@interface InscriptionProfilViewController ()

@end

@implementation InscriptionProfilViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@", _data);
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) setData:(NSDictionary*)dataFromInscription {
    //NSLog(@"sdpfkdsodkopfdskfds");
    _data = dataFromInscription;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
