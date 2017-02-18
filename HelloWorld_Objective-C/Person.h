//
//  Person.h
//  HelloWorld_Objective-C
//
//  Created by John Santiago Moreno Roman on 2/17/17.
//  Copyright © 2017 Santiago Moreno. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

- (void) walk;
- (void) jumpHeight: (float) centimiters;
- (void) runDistance: (float) meters withSpeed:(float) speed;
+ (int) currentYear;

@end
