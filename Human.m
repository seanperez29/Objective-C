//
//  Human.m
//  ClassAnatomy
//
//  Created by Sean Perez on 3/16/17.
//  Copyright © 2017 SeanPerez. All rights reserved.
//

#import "Human.h"

@implementation Human

-(id)initWithFirstName:(NSString*)first lastName:(NSString*)last {
    self.firstName = first;
    self.lastName = last;
    self = [super init];
    return self;
}

-(void)printName {
    NSLog(@"%@ %@", self.firstName, self.lastName);
}

@end
