//
//  ShowProductViewController.m
//  Iconity
//
//  Created by Alexandre LEVY on 26/04/15.
//  Copyright (c) 2015 Alexandre LEVY. All rights reserved.
//

#import "ShowProductViewController.h"

@interface ShowProductViewController ()

@end

@implementation ShowProductViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *url = [NSURL URLWithString:@"http://sdc-dios.cloudapp.net:3000/api/1/articles"];
    NSMutableURLRequest *req = [NSMutableURLRequest requestWithURL:url];
    
    NSData *res = [NSURLConnection  sendSynchronousRequest:req returningResponse:nil error:nil];
    NSError *error;
    NSDictionary *tab = [NSJSONSerialization JSONObjectWithData:res options:kNilOptions error:&error];
    
    
    for (NSDictionary *s in tab) {
        if ([[s objectForKey:@"id"]intValue] == _id)
        {
            NSURL *url = [NSURL URLWithString:@"https://beiconity.com/system/items/Foulard_Hermes_Luxe_a_louer.JPG"];
            
            UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:url]];
            UIImageView *imageView = [[UIImageView alloc] init];
            imageView.image = image;
            imageView.frame = CGRectMake(40, 80, 300 , 300);
            [self.view addSubview:imageView];
        
            UILabel *label = [[UILabel alloc] init];
            [label setText:[NSString stringWithFormat: @"Proprietaire : %@", [s objectForKey:@"name"] ]];
            label.frame = CGRectMake(40 , -50, 200, 200);
            label.textColor = [UIColor blackColor];
            [self.view addSubview:label];
            
            UILabel *description = [[UILabel alloc] init];
            [description setText:[NSString stringWithFormat: @"Marque : %@ ", [s objectForKey:@"mark"]]];
            description.frame = CGRectMake(40 , 300, 200, 200);
            description.textColor = [UIColor blackColor];
            [self.view addSubview:description];
            
            UILabel *sex = [[UILabel alloc] init];
            [sex setText:[NSString stringWithFormat: @"Sexe : %@ ", [s objectForKey:@"gender"]]];
            sex.frame = CGRectMake(40 , 320, 200, 200);
            sex.textColor = [UIColor blackColor];
            [self.view addSubview:sex];
            
            UILabel *price = [[UILabel alloc] init];
            [price setText:[NSString stringWithFormat: @"Prix : %@ €/sem", [s objectForKey:@"price"]]];
            price.frame = CGRectMake(40 , 340, 200, 200);
            price.textColor = [UIColor blackColor];
            [self.view addSubview:price];
            
            
            [self.location.layer setBorderWidth:2.0];
            [self.location.layer setBorderColor:[[UIColor colorWithRed:231.0/255.0 green:96.0/255.0 blue:87.0/255.0 alpha:1.0] CGColor]];
        }
    }
    NSLog(@"%d", _id);
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) setId:(int)idproduct {
    //NSLog(@"sdpfkdsodkopfdskfds");
    _id = idproduct;
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
