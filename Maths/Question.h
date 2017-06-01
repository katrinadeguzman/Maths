//
//  AdditionQuestion.h
//  Maths
//
//  Created by Katrina de Guzman on 2017-05-30.
//  Copyright © 2017 Katrina de Guzman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property NSString* question;
@property float answer;

@property float rightValue;
@property float leftValue;

@property NSDate* startTime;
@property NSDate* endTime;

-(void)generateQuestion;
-(BOOL)checkAnswer:(float)answer;
-(NSTimeInterval)answerTime;

@end
