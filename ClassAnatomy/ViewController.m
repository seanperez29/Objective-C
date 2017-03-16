//
//  ViewController.m
//  ClassAnatomy
//
//  Created by Sean Perez on 3/14/17.
//  Copyright © 2017 SeanPerez. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "Vehicle.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Person *person1 = [[Person alloc]init];
    person1.firstName = @"Sandra";
    [person1 setLastName:@"Bullocks"];
    Vehicle *car = [[Vehicle alloc]init];
    car.model = @"BMW 328i";
    NSLog(@"Make and Model: %@", car.model);
    
    
    int thisIsAnInt = 5;
    float thisIsAFloat = 5.6;
    double thisIsADouble = 5.7778;
    
    NSLog(@"%d", thisIsAnInt);
    NSLog(@"%f", thisIsAFloat);
    NSLog(@"%f", thisIsADouble);
    
    int age = 25; //Not good to use native C types because they can't be stored in arrays or worked with well enough in Objective-C
    NSNumber *age2 = [NSNumber numberWithInt:5]; //NSNumber is a class and is what you will use. When you are working with values that you want to store use NSNumber
    NSNumber *age3 = [NSNumber numberWithInt:7];
    
    int val = age2.intValue; //Can use this to grab a value out of NSNumber and do simple calculations
    int val2 = [age2 intValue]; //This is another syntax of the above
    int val3 = age3.intValue;
    
    int sum = val + val3;
    
    NSLog(@"%d", sum);
    
    NSNumber *numSum = [NSNumber numberWithInt:sum];
    NSArray *numArray = @[age2, age3, numSum];
    
    NSString *strNum = numSum.stringValue;
    NSString *newStrNum = [numSum stringValue]; //Dot syntax is used on properties and bracket syntax is for calling functions of classes
    NSInteger someInt = 55;
    NSNumber *numInt = [NSNumber numberWithInt:[age2 intValue] * [age3 intValue]];
    
    NSString *personFirstName = @"Jack";
    NSString *personLastName = @"Smith";
    NSString *fullName = [NSString stringWithFormat:@"%@ %@", personFirstName, personLastName];
    NSLog(@"%@", fullName);
    NSString *appendedString = [fullName stringByAppendingString:@" - Died in 1448"];
    NSLog(@"%@", appendedString);
    
    NSString *var1 = @"Richard";
    NSString *var2 = @"Sherman";
    NSString *var3 = @"richard";
    
    if (![var1 isEqualToString:var2]) {
        NSLog(@"They are not the same");
    } else {
        NSLog(@"They are not the same");
    }
    
    if ([var1.lowercaseString isEqualToString:var3]) {
        NSLog(@"We got to this print");
    }
    
    if ([var1 caseInsensitiveCompare:var3] == NSOrderedSame) {
        NSLog(@"They are definitely the same");
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
