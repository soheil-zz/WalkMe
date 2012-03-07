//
//  AppDelegate.h
//  WalkMe
//
//  Created by Soheil Yasrebi on 2/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    AVCaptureSession *torchSession;
}

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) AVCaptureSession * torchSession;
@property (strong, nonatomic) ViewController *viewController;

@end
