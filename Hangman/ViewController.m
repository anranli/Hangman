//
//  ViewController.m
//  Hangman
//
//  Created by Class Account on 10/18/13.
//  Copyright (c) 2013 Class Account. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction) pressStart: (UIButton*) sender {
    [_model start];
    [self update];
}

- (IBAction) pressGuess: (UITextField*) sender {
    [_model guess: sender.text];
    [self update];
    
    if ([_model isGameOver]) {
        _incorrectGuesses.text = @"You lose!";
    }
    else if ([_model isGameWon]) {
        _incorrectGuesses.text = @"You win!";
    }
    
    sender.text = @"";
    [sender resignFirstResponder];
    [_hangmanView becomeFirstResponder];
}

- (void) update {
    _correctGuesses.text = [_model setToString: [_model _correctLettersGuessed]];
    _incorrectGuesses.text = [_model setToString: [_model _incorrectLettersGuessed]];
    _incorrectGuesses.text = @"Game is in progress";
    
    [_hangmanView drawHangman: [_model step]];
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[_hangmanView _imgName]]];
    _image.image = [UIImage imageNamed: [_hangmanView _imgName]];
    //[_hangmanView drawRect: ];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
