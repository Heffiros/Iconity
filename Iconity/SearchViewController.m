//
//  SearchViewController.m
//  Iconity
//
//  Created by Adadémey Marvin on 22/04/2015.
//  Copyright (c) 2015 Alexandre LEVY. All rights reserved.
//

#import "SearchViewController.h"
#import "ShowProductViewController.h"
@interface SearchViewController ()

@end

@implementation SearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *url = [NSURL URLWithString:@"http://sdc-dios.cloudapp.net:3000/api/1/articles"];
    NSMutableURLRequest *req = [NSMutableURLRequest requestWithURL:url];
    
    NSData *res = [NSURLConnection  sendSynchronousRequest:req returningResponse:nil error:nil];
    NSError *error;
    NSDictionary *tab = [NSJSONSerialization JSONObjectWithData:res options:kNilOptions error:&error];
    NSInteger x = 0;
    NSInteger y = 50;
   for (NSDictionary *s in tab) {
       if (x >= 300) {
           x = 0;
           y = y + 140;
       }
       
       
       NSURL *url = [NSURL URLWithString:@"https://beiconity.com/system/items/Top_soie_createur_location.png"];
       
       UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:url]];
       UIImageView *imageView = [[UIImageView alloc] init];
       imageView.image = image;
       imageView.frame = CGRectMake(x, y, 100 , 100);
       
       UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
       [button addTarget:self
                  action:@selector(redirect:)
        forControlEvents:UIControlEventTouchUpInside];
       [button setTitle:[s objectForKey:@"Robe"] forState:UIControlStateNormal];
       button.tag = [[s objectForKey:@"id"]integerValue];
       button.frame = CGRectMake(x, y, 100, 100);
       [_scroll addSubview:button];
       
       UILabel *label = [[UILabel alloc] init];
       [label setText:[NSString stringWithFormat: @"%@ €", [s objectForKey:@"price"]]];
       label.frame = CGRectMake(x + 20, (y + 110), 150, 12);
       label.textColor = [UIColor blackColor];
       [_scroll addSubview:label];
       
       x = x + 140;
       
       [_scroll addSubview:imageView];
       _scroll.contentSize = CGSizeMake(_scroll.frame.size.width, _scroll.contentSize.height + 44);
       
   }
    // Do any additional setup after loading the view.
    
    // Style Tab Bar
    self.tabBarController.tabBar.barTintColor = [UIColor colorWithRed:231.0/255.0 green:96.0/255.0 blue:87.0/255.0 alpha:1.0];
    self.tabBarController.tabBar.tintColor = [UIColor whiteColor];
    [[UITabBarItem appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName : [UIColor whiteColor] }
                                             forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName : [UIColor whiteColor] }
                                             forState:UIControlStateSelected];
    UITabBarItem *item0 = [self.tabBarController.tabBar.items objectAtIndex:0];
    //unselected icon
    item0.image = [[UIImage imageNamed:@"ICONES-08.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //selected icon
    item0.selectedImage = [UIImage imageNamed:@"ICONES-08.png"];
    
    UITabBarItem *item1 = [self.tabBarController.tabBar.items objectAtIndex:1];
    //unselected icon
    item1.image = [[UIImage imageNamed:@"ICONES-07.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //selected icon
    item1.selectedImage = [UIImage imageNamed:@"ICONES-07.png"];
    
    UITabBarItem *item2 = [self.tabBarController.tabBar.items objectAtIndex:2];
    //unselected icon
    item2.image = [[UIImage imageNamed:@"ICONES-10.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //selected icon
    item2.selectedImage = [UIImage imageNamed:@"ICONES-10.png"];
    
    // Style Top Bar
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:231.0/255.0 green:96.0/255.0 blue:87.0/255.0 alpha:1.0];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    
}



- (void) redirect:sender {
    UIButton *button = (id)sender;
     _id = (int)button.tag;
    [self performSegueWithIdentifier:@"product" sender:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"product"]) {
         ShowProductViewController *vc = [segue destinationViewController];
        [vc setId:_id];
        //    [segue.destinationViewController setData:self.data];
    }
}


@end
