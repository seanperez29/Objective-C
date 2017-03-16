//
//  Vehicle.m
//  ClassAnatomy
//
//  Created by Sean Perez on 3/14/17.
//  Copyright © 2017 SeanPerez. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

-(void)setOdometer:(long)odometer {
    if (odometer > _odometer) {
        _odometer = odometer;
    }
}

-(NSString*)model {
    if ([_model isEqualToString:@"Honda Civic"]) {
        return @"POS";
    } else {
        return _model;
    }
}

@end
