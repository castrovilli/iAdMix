//
//  ViewController.m
//  PreRollVideoAds
//
//  Created by grharon on 2/17/14.
//  Copyright (c) 2014 limalogy. All rights reserved.
//

#import "ViewController.h"
#import <MediaPlayer/MediaPlayer.h>
#import <iAd/iAd.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //moviePlayer = [MPMoviePlayerController new];
    //moviePlayer.contentURL = [NSURL URLWithString:@""];
    
    //[moviePlayer playPreRollAdWith]
    
   /* NSURL *url = [NSURL URLWithString: @"http://www.ebookfrenzy.com/ios_book/movie/movie.mov"];
    MPMoviePlayerController *moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:url];
    [self.view addSubview:_moviePlayer.view];
    [_moviePlayer setFullscreen:YES animated:YES];
    [_moviePlayer playPrerollAdWithCompletionHandler:^(NSError *error) {
        [moviePlayer play];
    }];*/
    
   
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)testButtonPressed:(id)sender
{
    //mpvController = [MPMoviePlayerViewController new];
    self.mpController = [MPMoviePlayerController new];
    self.mpController.contentURL = [NSURL URLWithString: @"http://www.ebookfrenzy.com/ios_book/movie/movie.mov"];
    
    [self.mpController playPrerollAdWithCompletionHandler:^(NSError *error) {
        // Check if error is non-nil during development
        NSLog(@"error playing ad %@", error.userInfo);
        [self.mpController play];
    }];
    
    self.mpController.controlStyle = MPMovieControlStyleDefault;

    [self.view addSubview:self.mpController.view];
    [self.view layoutIfNeeded];
    
   [self.mpController setFullscreen:YES animated:YES];
}

@end
