//
//  Person.m
//  ClassAnatomy
//
//  Created by Sean Perez on 3/14/17.
//  Copyright © 2017 SeanPerez. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void) test {
    isHungry = YES;
    self.firstName = @"Bob";
}

- (void)speakName {
    NSLog(@"My name is Jack Davis");
}

+ (void)stateSpecies {
    NSLog(@"I am a human");
}

@end
