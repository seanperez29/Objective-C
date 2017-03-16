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
    
    NSString *personFirstName = @"Jack";
    NSString *personLastName = @"Smith";
    NSString *fullName = [NSString stringWithFormat:@"%@ %@", personFirstName, personLastName];
    NSLog(@"%@", fullName);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
