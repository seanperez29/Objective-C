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
#import "Civic.h"
#import "Human.h"

@interface ViewController ()
@property (nonatomic) double bankAccount;
@property (nonatomic) double itemAmount;
@end

@implementation ViewController


//FUNCTIONS

-(BOOL)canPurchase:(double)amount {
    if (self.bankAccount >= amount)
        return YES;
    
    return NO;
}

-(void)playground {
    
    if ([self canPurchase:self.itemAmount]) {
        NSLog(@"We can buy the item");
    }
    
    Person *person = [[Person alloc]init];
    [person speakName];
    [Person stateSpecies];
    
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://www.google.com"]]];
    
    UIImage *image2;
    NSString *imageString = @"http://www.google.com";
    NSURL *imageURL = [NSURL URLWithString:imageString];
    NSData *data = [NSData dataWithContentsOfURL:imageURL];
    image2 = [UIImage imageWithData:data];
}

- (void)declareWinnerWithPlayerAScore:(NSInteger)scoreA playerBScore:(NSInteger)scoreB {
    
    if (scoreA > scoreB)
        NSLog(@"Player A Wins!");
    else if (scoreA < scoreB)
        NSLog(@"Player B Wins!");
    else
        NSLog(@"Looks like it was a tie!");
    
}

//WORKING WITH NULL

-(void)getName:(NSString* _Nullable)name {
    
}

-(int)sum:(nonnull NSNumber*)numA :(nonnull NSNumber*)numB {
    int sum = numA.intValue + numB.intValue;
    return sum;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self getName:nil];
    
    NSNumber *num1;
    NSNumber *num2;
    
    int sum = [self sum:num1 :num2];
    NSLog(@"Sum: %d", sum);
    
    if (num1 && num2) {
        int sum = [self sum:num1 :num2];
        NSLog(@"Sum: %d", sum);
    } else {
        NSLog(@"These are null!");
    }
        
    
    
    Human *plainHuman = [[Human alloc]init];
    [plainHuman printName];
    
    Human *human = [[Human alloc]initWithFirstName:@"Sean" lastName:@"Perez"];
    [human printName];
    
    Civic *civic = [[Civic alloc]init];
    Civic *civic2 = [Civic new]; //Just going to call the default initializer and can't use designated/custom initalizers
    
    [self declareWinnerWithPlayerAScore:70 playerBScore:65];
    
    
    self.bankAccount = 500.50;
    self.itemAmount = 400.00;
    
    Person *person1 = [[Person alloc]init];
    person1.firstName = @"Sandra";
    [person1 setLastName:@"Bullocks"];
    Vehicle *car = [[Vehicle alloc]init];
    car.model = @"BMW 328i";
    NSLog(@"Make and Model: %@", car.model);
    
    
    //NUMBERS
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
    int sum2 = val + val3;
    NSLog(@"%d", sum);
    NSNumber *numSum = [NSNumber numberWithInt:sum];
    NSArray *numArray = @[age2, age3, numSum];
    
    
    //STRINGS
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
    NSString *coolName = nil;
    if (coolName) {
        NSLog(@"Awesome");
    }
    if (!coolName) {
        coolName = @"Sean";
    }
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
    
    //ARRAYS
    
    NSArray *normalArray = [NSArray arrayWithObjects:@"Hello", @"Okay", @"Not", @"Whatever", nil];
    NSArray *normalArray2 = @[@"OK", @"Nah"];
    NSMutableArray *mutableArray = [[NSMutableArray alloc]init];
    NSString *myName = @"Sean";
    [mutableArray addObject:myName];
    NSLog(@"Items in array: %@", mutableArray.firstObject);
    
    NSMutableArray *newMut = [NSMutableArray arrayWithObjects:@"Slam", @"Jam", @"Thank you", @"Mam", nil];
    NSLog(@"Mut: %@", newMut.debugDescription);
    [newMut removeObjectAtIndex:3];
    NSLog(@"Mut 2: %@", newMut.debugDescription);
    [newMut addObject:@"Mam"];
    
    NSArray *arr = [NSArray arrayWithArray:normalArray];
    NSArray *arr2 = newMut;
    
    //DICTIONARIES
    
    
    NSNumber *ages = [NSNumber numberWithInt:40];
    NSNumber *ages2 = [NSNumber numberWithInt:34];
    NSDictionary *dict = @{@"Jack": ages, @"Dave": ages2};
    
    int jacksAge = [[dict objectForKey:@"Jack"] intValue];
    NSLog(@"Jack's Age: %d", jacksAge);
    
    NSMutableDictionary *mutDict = [@{@"1": @"BMW", @"2": @"Volvo", @"3": @"Honda"} mutableCopy]; //Not the most efficient and not very company technique
    NSMutableDictionary *mutDict2 = [[NSMutableDictionary alloc]init];
    [mutDict2 setObject:@"JacK" forKey:@"David"];
    [mutDict2 setObject:[NSNumber numberWithDouble:20.00] forKey:@"Random Number"];
    
    
    //LOOPS
    
    NSArray *cars = @[@"BMW", @"Maserati", @"Ferrari", @"Bronco II"];
    for (int x = 0; x < cars.count; x++) {
        NSString *car = [cars objectAtIndex:x];
        NSLog(@"Car: %@", car);
    }
    
    for (NSString *car in cars) {
        NSLog(@"Car: %@", car);
    }
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
