//
//  ViewControllerFav.h
//  baidu
//
//  Created by lee on 14-9-1.
//  Copyright (c) 2014年 lee. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "SGFocusImageFrame.h"
#import "SGFocusImageItem.h"
#import "AppDelegate.h"

@interface ViewControllerFav : UIViewController<SGFocusImageFrameDelegate>
@property(nonatomic,retain)IBOutlet UIView* focusView;
@property(nonatomic,retain)IBOutlet ViewPro* proView;
@end
