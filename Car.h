//
//  Car.h
//  ClassAnatomy
//
//  Created by Sean Perez on 3/16/17.
//  Copyright © 2017 SeanPerez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
@property (nonatomic,strong) NSString *make;
@property (nonatomic,strong) NSString *model;
@property (nonatomic,strong) NSString *engineSize;
-(void)drive;
@end
