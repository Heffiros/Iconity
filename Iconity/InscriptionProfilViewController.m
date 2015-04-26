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
    
    [self.Validate.layer setBorderWidth:2.0];
    [self.Validate.layer setBorderColor:[[UIColor colorWithRed:231.0/255.0 green:96.0/255.0 blue:87.0/255.0 alpha:1.0] CGColor]];
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

- (IBAction)Validate:(id)sender {
    if (self.switch1.isOn) {
        _dataProfil = @{
                        @"telephone": _telephone.text,
                        @"adresse": _adresse.text,
                        @"postal": _postal.text,
                        @"ville": _ville.text,
                        };
        
       
        NSString *urlString = [NSString stringWithFormat: @"http://46.105.123.11/iconity/new_users.php?prenom=%@&nom=%@&email=%@&password=%@&telephone=%@&adresse=%@&postal=%@&ville=%@", [_data objectForKey:@"prenom"] , [_data objectForKey:@"nom"], [_data objectForKey:@"mail"], [_data objectForKey:@"mdp"], [_dataProfil objectForKey:@"telephone"], [_dataProfil objectForKey:@"adresse"], [_dataProfil objectForKey:@"postal"], [_dataProfil objectForKey:@"ville"]];
        NSURL *url = [NSURL URLWithString:urlString];
        NSLog(@"%@", urlString);
        
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        NSData *data = [NSURLConnection sendSynchronousRequest:req returningResponse:nil error:nil];
        NSString *rep = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"%@", rep);
    }
}
@end
