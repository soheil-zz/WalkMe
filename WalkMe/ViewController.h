//
//  ViewController.h
//  WalkMe
//
//  Created by Soheil Yasrebi on 2/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CaptureSessionManager.h"


@interface ViewController : UIViewController// <AVCaptureVideoDataOutputSampleBufferDelegate>
{
    UITextView *textView;
    BOOL onOff;
}

@property (retain) CaptureSessionManager *captureManager;
@property (retain) UITextView *textView;

//- (UIImage *) imageFromSampleBuffer:(CMSampleBufferRef) sampleBuffer;
//- (void)setupCaptureSession;
- (void) turnFlashOn: (BOOL)on;
- (void) switchFlash;

@end
