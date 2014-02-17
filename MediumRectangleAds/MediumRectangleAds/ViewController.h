//
//  ViewController.h
//  MediumRectangleAds
//
//  Created by grharon on 2/13/14.
//  Copyright (c) 2014 limalogy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface ViewController : UIViewController <ADBannerViewDelegate>
@property (strong, nonatomic) IBOutlet ADBannerView *bannerView;
@end
