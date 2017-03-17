//
//  Civic.m
//  ClassAnatomy
//
//  Created by Sean Perez on 3/16/17.
//  Copyright © 2017 SeanPerez. All rights reserved.
//

#import "Civic.h"

@implementation Civic

-(id)init {
    if (self = [super init]) {
        
    }
    
    [self drive];
    return self;
}

-(void)test {
    self.make = @"Honda";
    self.model = @"Civic";
    //[self drive];
}

//This is how you override a parent function. And then call the parent functions implementation with super.
-(void)drive {
    NSLog(@"Drive from subclass");
    [super drive];
}

@end
