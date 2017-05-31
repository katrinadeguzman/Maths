//
//  AdditionQuestion.h
//  Maths
//
//  Created by Katrina de Guzman on 2017-05-30.
//  Copyright © 2017 Katrina de Guzman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property NSString* question;
@property NSInteger answer;

-(void)generateQuestion;
-(BOOL)checkAnswer:(NSInteger)answer;

@end
