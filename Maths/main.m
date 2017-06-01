//
//  main.m
//  Maths
//
//  Created by Katrina de Guzman on 2017-05-30.
//  Copyright © 2017 Katrina de Guzman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "AdditionQuestion.h"
#import "SubtractionQuestion.h"
#import "DivisionQuestion.h"
#import "MultiplicationQuestion.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSLog(@"Maths!");
        BOOL quit = NO;
        ScoreKeeper* scoreKeeper = [[ScoreKeeper alloc]init];
        
        while(!quit)
        {
            //Question* question = [[MultiplicationQuestion alloc]init];
            //Question* question = [[AdditionQuestion alloc]init];
            Question* question = [[SubtractionQuestion alloc]init];
            //Question* question = [[DivisionQuestion alloc]init];
            
            [question generateQuestion];
            char input[255];
            fgets(input, 255, stdin);
            
            NSString *inputString = [[NSString stringWithCString:input encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            if([inputString isEqualToString:@"quit"] )
            {
                quit = YES;
                
                return 0;
            }
            
            NSInteger answer = [inputString integerValue];
            if([question checkAnswer:answer])
            {
                NSLog(@"RIGHT!");
                [question answerTime];
                [scoreKeeper correct:YES];
                
            }
            else
            {
                NSLog(@"WRONG!");
                [question answerTime];
                [scoreKeeper correct:NO];
            }
            
        }
        
        
    }
}
