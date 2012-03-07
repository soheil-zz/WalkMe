//
//  main.m
//  WalkMe
//
//  Created by Soheil Yasrebi on 2/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"

//#ifdef DEBUG
#import "NDNativeDriver.h"
//#endif

int main(int argc, char *argv[])
{
    //#ifdef DEBUG
    [NDNativeDriver start];
    NSLog(@"dddd");
    //#endif
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
