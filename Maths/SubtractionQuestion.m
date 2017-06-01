//
//  SubtractionQuestion.m
//  Maths
//
//  Created by Katrina de Guzman on 2017-05-31.
//  Copyright © 2017 Katrina de Guzman. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

-(instancetype)init
{
    self = [super init];
    
    self.rightValue = arc4random_uniform(91)+10;
    self.leftValue = arc4random_uniform(91)+10;
    if(self.rightValue > self.leftValue)
    {
        self.answer = self.rightValue - self.leftValue;
        self.question = [NSString stringWithFormat:@"%.0f - %.0f =", self.rightValue, self.leftValue];
    }
    else
    {
        self.answer = self.leftValue - self.rightValue;
        self.question = [NSString stringWithFormat:@"%.0f - %.0f =", self.leftValue, self.rightValue];
    }
    
    self.startTime = [NSDate date];
    
    return self;
}

@end
