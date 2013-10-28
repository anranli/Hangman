//
//  ViewController.h
//  Hangman
//
//  Created by Class Account on 10/18/13.
//  Copyright (c) 2013 Class Account. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HangmanModel.h"
#import "HangmanView.h"

@interface ViewController : UIViewController {
    @private
    HangmanModel *_model;
    HangmanView *_hangmanView;
    UIImageView* _image;
}

@property (retain) IBOutlet HangmanView *_hangmanView;
@property (retain) IBOutlet UIImageView *_image;

@property (retain, nonatomic) IBOutlet UILabel *gameState;
@property (retain, nonatomic) IBOutlet UILabel *correctGuesses;
@property (retain, nonatomic) IBOutlet UILabel *incorrectGuesses;

- (IBAction) pressStart: (UIButton*) sender;
- (IBAction) pressGuess: (UITextField*) sender;
- (void) update;

@end
