//
//  HangmanModel.m
//  HangmaniOS
//
//  Created by Class Account on 10/18/13.
//  Copyright (c) 2013 Class Account. All rights reserved.
//

#import "HangmanModel.h"
#import "HangmanWords.h"

@implementation HangmanModel
- (id) init {
    self = [super init];
    if (self) 
    {
        _abc = [NSCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxy"];
    }
    return self;
}

- (void) start {
    _incorrectLettersGuessed = [[NSMutableSet alloc] init];
    _lettersToGuess = [[NSMutableSet alloc] init];
    NSString* word = [[[HangmanWords alloc] init] getWord];
    
    for (int i = 0; i < [word length]; i++) {
        [_lettersToGuess addObject:[word substringWithRange:NSMakeRange(i, 1)]];
    }
    
    /*for (NSString* elem in lettersToGuess)
    {
        if ([elem isEqual:@" "])
        {
            [lettersToGuess removeObject:@" "];
        }
    }*/
}

- (void) guess: (NSString *) str {
    if ([self isGameOver] || [self isGameWon]) {
        return;
    }
    if ([str length] == 1 && [self contains: _abc element: str]) {
        if ([self contains: _lettersToGuess element: str]) {
            [_lettersToGuess removeObject: str];
            [_correctLettersGuessed addObject: str];
        }
        else {
            [_incorrectLettersGuessed addObject: str];
        }
    }
}

- (int) step {
    return [_incorrectLettersGuessed count];
}

- (BOOL) isGameOver {
    return [_incorrectLettersGuessed count] >= 6;
}

- (BOOL) isGameWon {
    return [_lettersToGuess count] <= 0;
}

- (BOOL) contains: (NSMutableSet*) set element: (NSString*) elem {
    for (NSString *setElem in set)
    {
        if ([setElem isEqual:elem])
        {
            return true;
        }
    }
    return false;
}

- (NSString*) setToString: (NSMutableSet*) set {
    
    NSString *str = @"";
    
    for (NSString* setElem in set)
    {
        str = [NSString stringWithFormat:@"%@%@", str, setElem];
    }
    return str;
}

@end
