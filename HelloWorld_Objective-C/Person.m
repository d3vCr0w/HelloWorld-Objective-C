//
//  Person.m
//  HelloWorld_Objective-C
//
//  Created by John Santiago Moreno Roman on 2/17/17.
//  Copyright © 2017 Santiago Moreno. All rights reserved.
//

#import "Person.h"

@implementation Person

int year;

- (id) init{
    self = [super init];
    if(self){
        _name = @"Default name";
        [self setLastName:@"My LastName"];
        self.age = 20;
    }
    return self;
}

- (void) walk{
    NSLog(@"Hi there, I'm walking");
}

- (void) jumpHeight: (float) centimiters{
    NSLog(@"Jumping %f centimiters", centimiters);
}
- (void) runDistance: (float) meters withSpeed:(float) speed{
    NSLog(@"Running %f meters at %f km/h", meters, speed);
}
+ (int) currentYear{
    year = 2017;
    NSLog(@"Current year is: %i", year);
    return year;
}



@end
