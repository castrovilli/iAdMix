//
//  ViewController.m
//  MediumRectangleAds
//
//  Created by grharon on 2/13/14.
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
    
    //self.canDisplayBannerAds = YES;
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        self.bannerView = [[ADBannerView alloc] initWithAdType:ADAdTypeMediumRectangle];
        self.bannerView.delegate = self;
        //self.bannerView.center =self.view.center;
       // self.bannerView.hidden = YES;
        [self.view addSubview:self.bannerView];
    }
}

-(void)bannerViewDidLoadAd:(ADBannerView *)banner {
    [self.view addSubview:banner];
    [self.view layoutIfNeeded];
    
  //  self.bannerView.hidden = NO;
   // [self updateUI];

}
-(void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error {
    NSLog(@"didFailToReceiveAdWithError");
    [banner removeFromSuperview];
    [self.view layoutIfNeeded];
    
   // self.bannerView.hidden = YES;
    //[self updateUI];
}

- (void) updateUI {
    if (!self.bannerView.hidden) {
        self.bannerView.center = self.view.center;
       // CGRect adFrame = _rectangleAdView.frame;
        //adFrame.origin.y = self.dateLabel.frame.origin.y + self.dateLabel.frame.size.height + 70; self.bannerView.frame = adFrame;
        
       // CGRect textFrame = self.bodyTipTextView.frame;
       // textFrame.origin.y = adFrame.origin.y + adFrame.size.height; textFrame.size.height -= adFrame.size.height+ 20;
       // self.bodyTipTextView.frame = textFrame;
    } else {
       // CGRect textFrame = self.bodyTipTextView.frame; textFrame.origin.y = self.dateLabel.frame.origin.y + 70;
       // textFrame.size.height =self.containerView.frame.size.height –vtextFrame.origin.y -20; self.bodyTipTextView.frame = textFrame;
    }
}

-(void)willAnimateRotationToInterfaceOrientation: (UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    [self updateUI]; }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
