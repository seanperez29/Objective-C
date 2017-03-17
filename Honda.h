//
//  Honda.h
//  ClassAnatomy
//
//  Created by Sean Perez on 3/16/17.
//  Copyright © 2017 SeanPerez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Honda : NSObject
@property (nonatomic,strong) NSString *model;
@property (nonatomic,strong) NSNumber *miles;
-(void)increaseMilesToOdometer;
-(void)drive;
@end
