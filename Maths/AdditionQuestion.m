//
//  AdditionQuestion.m
//  Maths
//
//  Created by Katrina de Guzman on 2017-05-30.
//  Copyright © 2017 Katrina de Guzman. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

-(instancetype)init
{
    self = [super init];
    
    NSInteger var1 = arc4random_uniform(91)+10;
    NSInteger var2 = arc4random_uniform(91)+10;
    
    _answer = var1+var2;
    _question = [NSString stringWithFormat:@"%tu + %tu =", var1, var2];
    
    return self;
}

-(void)generateQuestion
{
    
    NSLog(@"%@",_question);
}

-(BOOL)checkAnswer:(NSInteger)answer
{
    return answer == _answer;
}
@end
