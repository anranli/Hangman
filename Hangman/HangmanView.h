//
//  HangmanDrawView.h
//  HangmaniOS
//
//  Created by Class Account on 10/18/13.
//  Copyright (c) 2013 Class Account. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HangmanView : UIView {
    @private
    NSString* _imgName;
}

@property (assign) UIImage *_imgName;

- (void) drawRect: (CGRect) rect;
- (void) drawHangman: (int) index;

@end
