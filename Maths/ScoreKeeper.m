//
//  ScoreKeeper.m
//  Maths
//
//  Created by Katrina de Guzman on 2017-05-30.
//  Copyright © 2017 Katrina de Guzman. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper


-(void)correct:(BOOL)isCorrect
{
    if(isCorrect)
    {
        _right++;
    }
    else
    {
        _wrong++;
    }
    float finalPercent = (_right/(_right+_wrong))*100;
    NSLog(@"score: %.0f correct, %.0f incorrect = %.1f%%", _right, _wrong, finalPercent);
}
@end
