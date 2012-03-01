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
}

@property (retain) CaptureSessionManager *captureManager;
@property (retain) UITextView *textView;

//- (UIImage *) imageFromSampleBuffer:(CMSampleBufferRef) sampleBuffer;
//- (void)setupCaptureSession;

@end
