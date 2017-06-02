//
//  QuestionManager.h
//  Maths
//
//  Created by Katrina de Guzman on 2017-05-31.
//  Copyright © 2017 Katrina de Guzman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject
@property NSMutableArray* questions;

- (void)addQuestion:(Question *)question;

- ( void)timeOutput;


@end
