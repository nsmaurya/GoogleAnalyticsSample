//
//  ViewController.m
//  GoogleAnalyticsSample
//
//  Created by Sunil Maurya on 6/5/15.
//  Copyright (c) 2015 appstudioz. All rights reserved.
//

#import "ViewController.h"
#import "GoogleAnalyticsWebFile/GAI.h"
#import "GoogleAnalyticsWebFile/GAIDictionaryBuilder.h"
#import "GoogleAnalyticsWebFile/GAIFields.h"
@interface ViewController ()
- (IBAction)btnHitEventClick:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Implementing automatic screen measurement through google analytics
    
    // May return nil if a tracker has not already been initialized with a
    // property ID.
    //Google analytics which will tell the this screen opened.
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    // This screen name value will remain set on the tracker and sent with
    // hits until it is set to a new value or to nil.
    [tracker set:kGAIScreenName value:@"Home Screen"];
    // New SDK versions
    [tracker send:[[GAIDictionaryBuilder createScreenView] build]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnHitEventClick:(id)sender {
    
    
    //Event Tracking via google analytics
    
    // May return nil if a tracker has not already been initialized with a property
    // ID.
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    
    [tracker send:[[GAIDictionaryBuilder createEventWithCategory:@"ButtonClickedAction"     // Event category (required)
                                                          action:@"Click"  // Event action (required)
                                                           label:@"HitEvent"          // Event label
                                                           value:nil] build]];    // Event value
    
}
@end
