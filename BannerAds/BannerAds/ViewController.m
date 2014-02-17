//
//  ViewController.m
//  BannerAds
//
//  Created by grharon on 2/12/14.
//  Copyright (c) 2014 limalogy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.canDisplayBannerAds = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 Tapping on the banner displays the full-screen ad and calls viewWillDisappear:.
 This method is the perfect place to halt any intense action in your app or pause the
 playback of audio or video files that might clash with the ad media.

 */
- (void) viewWillDisapper
{
    
}
/*
 Dismissing the full screen ad calls viewDidAppear: where you can resume any
 paused activities or media playback.
 */
- (void) viewDidAppear
{
    
}


@end
