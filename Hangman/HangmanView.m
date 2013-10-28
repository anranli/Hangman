//
//  HangmanDrawView.m
//  HangmaniOS
//
//  Created by Class Account on 10/18/13.
//  Copyright (c) 2013 Class Account. All rights reserved.
//

#import "HangmanView.h"

@implementation HangmanView

- (id)init
{
    self = [super init];
    if (self) {
        [self drawHangman:0];
    }
    return self;
}

- (void) drawRect: (CGRect) rect {
    UIImage *myImage = [UIImage imageNamed: _imgName];
    CGRect imageRect = CGRectMake(10, 10, 300, 400);
    [myImage drawInRect:imageRect];
}

- (void) drawHangman: (int) index {
    _imgName = [NSString stringWithFormat:@"%@%i%@", @"hang_", index, @".gif"];
}

@end
