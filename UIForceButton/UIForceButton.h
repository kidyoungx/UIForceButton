//
//  UIForceButton.h
//  CinCer
//
//  Created by Kid Young on 11/21/18.
//  Copyright © 2018 Yang XiHong. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
#define UIControlEventTouchForce (1 << 9)      // on all touch force free:9,10,11

NS_CLASS_AVAILABLE_IOS(9_0) @interface UIForceButton : UIButton

@end

NS_ASSUME_NONNULL_END
