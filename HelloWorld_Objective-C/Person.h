//
//  Person.h
//  HelloWorld_Objective-C
//
//  Created by John Santiago Moreno Roman on 2/17/17.
//  Copyright © 2017 Santiago Moreno. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    @private
    float id_number;
    
    @public
    NSString *name;
    
    @public
    NSDate *birth_date;
    
    @protected
    float weight;
}

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic, assign) int age;
@property (nonatomic, assign, getter = isAlive) BOOL ailve;

- (void) walk;
- (void) jumpHeight: (float) centimiters;
- (void) runDistance: (float) meters withSpeed:(float) speed;
+ (int) currentYear;

@end
