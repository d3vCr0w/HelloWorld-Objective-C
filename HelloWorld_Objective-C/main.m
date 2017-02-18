//
//  main.m
//  HelloWorld_Objective-C
//
//  Created by John Santiago Moreno Roman on 2/17/17.
//  Copyright © 2017 Santiago Moreno. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

#define CONST @"I am a constant"
#define SOME_INT 255

@interface Alien : NSObject
- (void) beepBep;
- (NSString *) max:(int) numA Between:(int) numB;
@end

@implementation Alien
- (void) beepBep{
    NSLog(@"Hi, I'm an Alien from Andromeda");
}
- (NSString *) max:(int) numA Between:(int) numB{
    NSString *message;
    if(numA > numB){
        message = [NSString stringWithFormat:@"The number %i is greater than %i", numA, numB];
    }else if(numA < numB){
        message = [NSString stringWithFormat:@"The number %i is lower than %i", numA, numB];
    }else{
        message =  @"The numbers are equal";
    }
    
    return message;
}
@end

int main(int argc, const char * argv[]) { //or just int main(){}
    @autoreleasepool {
        const NSString *some_constant = @"I am another constant";
        
        NSLog(@"Hello, World!");
        
        //* means variable is a pointer
        //[Person alloc] to instantiate Person class
        //alloc to reserve memory for variable
        //init default constructor
        Person *me = [[Person alloc] init];
        Alien *alien = [Alien new];
        
        [me walk];
        [me jumpHeight:135.7f];
        [me runDistance:200 withSpeed:27.5f];
        [Person currentYear];
        NSLog(@"Name: %@", [me name]);
        [me setName:@"Santiago"];
        NSLog(@"My new name is: %@", [me name]);
        NSLog(@"My last name is: %@", [me lastName]);
        NSLog(@" My age is: %i", [me age]);
        
        [alien beepBep];
        NSLog(@"%@", [alien max:5 Between:5]);
        
        
        NSLog(@"%@", CONST);
        NSLog(@"%@", some_constant);
        NSLog(@"%i", SOME_INT);
        
        if( [CONST  isEqual: some_constant] ){
            NSLog(@"Both string constants are equal");
        }else{
            NSLog(@"String constants are not equal");
        }
        
        
        
    }
    return 0;
}
