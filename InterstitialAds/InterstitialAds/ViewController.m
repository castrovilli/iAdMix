//
//  ViewController.m
//  InterstitialAds
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UIViewController *destination = [segue destinationViewController];
    destination.interstitialPresentationPolicy = ADInterstitialPresentationPolicyAutomatic;
}

-(void)interstitialAd:(ADInterstitialAd *)interstitialAd didFailWithError:(NSError *)error
{
    NSLog(@"interstitialAd didFailWithError");
}

-(void)interstitialAdDidUnload:(ADInterstitialAd *)interstitialAd {
    NSLog(@"interstitialAd interstitialAdDidUnload");
 
}

@end
