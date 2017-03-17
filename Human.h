//
//  Human.h
//  ClassAnatomy
//
//  Created by Sean Perez on 3/16/17.
//  Copyright © 2017 SeanPerez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Human : NSObject

@property (nonatomic,strong) NSString *firstName;
@property (nonatomic,strong) NSString *lastName;
-(id)initWithFirstName:(NSString*)first lastName:(NSString*)last;
-(void)printName;

@end
