//
//  ScoreKeeper.h
//  Maths
//
//  Created by Katrina de Guzman on 2017-05-30.
//  Copyright © 2017 Katrina de Guzman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property float right;
@property float wrong;

-(void)correct:(BOOL)isCorrect;

@end
