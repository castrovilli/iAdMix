//
//  ViewController.h
//  PreRollVideoAds
//
//  Created by grharon on 2/17/14.
//  Copyright (c) 2014 limalogy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) MPMoviePlayerController *mpController;
@property (strong, nonatomic) IBOutlet UIButton *testButton;
-(IBAction)testButtonPressed:(id)sender;

@end
