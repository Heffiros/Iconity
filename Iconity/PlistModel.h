//
//  PlistModel.h
//  Iconity
//
//  Created by Alexandre LEVY on 22/04/15.
//  Copyright (c) 2015 Alexandre LEVY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlistModel : NSObject

-(void)SavePlistData:(NSString *)key WithData:(NSDictionary*)data;
-(NSDictionary*)OpenPlist;

@end
