//
//  AdditionQuestion.m
//  Maths
//
//  Created by Katrina de Guzman on 2017-05-30.
//  Copyright © 2017 Katrina de Guzman. All rights reserved.
//

#import "Question.h"

@implementation Question

-(instancetype)init
{
    self = [super init];
    
    _rightValue = arc4random_uniform(91)+10;
    _leftValue = arc4random_uniform(91)+10;
    
    _answer = _rightValue + _leftValue;
    _question = [NSString stringWithFormat:@"%.0f + %.0f =", _rightValue, _leftValue];
    
    _startTime = [NSDate date];
    //NSLog(@"Start%@ - %@", _startTime, self.startTime);
    
    return self;
}

-(void)generateQuestion
{
    
    NSLog(@"%@",_question);
}

-(BOOL)checkAnswer:(float)answer
{
    _endTime = [NSDate date];
    return answer == _answer;
}

-(NSTimeInterval)answerTime
{
    
    NSLog(@"%.0f seconds",[_endTime timeIntervalSinceDate:_startTime]);
    return [_endTime timeIntervalSinceDate:_startTime];
}
@end
