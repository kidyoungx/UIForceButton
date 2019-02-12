//
//  UIForceButton.m
//  CinCer
//
//  Created by Kid Young on 11/21/18.
//  Copyright © 2018 Yang XiHong. All rights reserved.
//

#import "UIForceButton.h"
#import <UIKit/UIFeedbackGenerator.h>

@interface UIForceButton ()

@property (nonatomic, assign) BOOL forceTouched;

@end

@implementation UIForceButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    self.forceTouched = NO;
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event
{
    [super touchesMoved:touches withEvent:event];
    if (self.forceTouched) {
        return;
    }
    if (touches.anyObject.force > 0 && touches.anyObject.force >= touches.anyObject.maximumPossibleForce) {
        [self sendActionsForControlEvents:UIControlEventTouchForce];
        if (@available(iOS 10.0.0, *)) {
            UIImpactFeedbackGenerator *impactFeedbackGenerator = [[UIImpactFeedbackGenerator alloc] init];
            [impactFeedbackGenerator prepare];
            [impactFeedbackGenerator impactOccurred];
        } else {

        }
        self.forceTouched = YES;
    }
}

@end
