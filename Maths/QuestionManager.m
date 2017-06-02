//
//  QuestionManager.m
//  Maths
//
//  Created by Katrina de Guzman on 2017-05-31.
//  Copyright © 2017 Katrina de Guzman. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    
    _questions = [[NSMutableArray alloc] init];
    
    return self;
}

- (void)addQuestion:(Question *)question
{
    [_questions addObject:question];
}

- (void)timeOutput
{
    NSTimeInterval totalTime = 0.0;
    
    for (Question *question in _questions)
    {
        totalTime += [question answerTime];
    }
    
    NSTimeInterval avg = totalTime / [_questions count];
    NSLog(@"total time: %.lf seconds - average time: %.lf seconds", totalTime, avg);
}


@end
