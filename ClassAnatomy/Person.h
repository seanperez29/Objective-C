//
//  Person.h
//  ClassAnatomy
//
//  Created by Sean Perez on 3/14/17.
//  Copyright © 2017 SeanPerez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    BOOL isHungry;
}

@property (nonatomic,strong) NSString *firstName;
@property (nonatomic,strong) NSString *lastName;

@end
