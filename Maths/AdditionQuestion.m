//
//  AdditionQuestion.m
//  Maths
//
//  Created by Katrina de Guzman on 2017-05-31.
//  Copyright © 2017 Katrina de Guzman. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

-(instancetype)init
{
    self = [super init];
    
    self.rightValue = arc4random_uniform(91)+10;
    self.leftValue = arc4random_uniform(91)+10;
    
    self.answer = self.rightValue + self.leftValue;
    self.question = [NSString stringWithFormat:@"%.0f + %.0f =", self.rightValue, self.leftValue];
    
    self.startTime = [NSDate date];
    
    return self;
}

@end
