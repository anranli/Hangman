//
//  HangmanModel.h
//  HangmaniOS
//
//  Created by Class Account on 10/18/13.
//  Copyright (c) 2013 Class Account. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HangmanModel : NSObject {
    @private
    NSMutableSet *_abc;
    
    NSMutableSet *_lettersToGuess;
    NSMutableSet *_incorrectLettersGuessed;
    NSMutableSet *_correctLettersGuessed;
}

@property (nonatomic, retain) NSMutableSet *_incorrectLettersGuessed;
@property (nonatomic, retain) NSMutableSet *_correctLettersGuessed;

- (id) init;
- (void) start;
- (void) guess: (NSString*) str;
- (int) step;
- (BOOL) isGameOver;
- (BOOL) isGameWon;
- (BOOL) contains: (NSMutableSet*) set element: (NSString*) elem;
- (NSString*) setToString: (NSMutableSet*) set;
@end
