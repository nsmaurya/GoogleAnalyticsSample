//
//  SecondViewController.m
//  GoogleAnalyticsSample
//
//  Created by Sunil Maurya on 6/5/15.
//  Copyright (c) 2015 appstudioz. All rights reserved.
//

#import "SecondViewController.h"
#import "GoogleAnalyticsWebFile/GAI.h"
#import "GoogleAnalyticsWebFile/GAIDictionaryBuilder.h"
#import "GoogleAnalyticsWebFile/GAIFields.h"
@interface SecondViewController ()
- (IBAction)btnBackClick:(id)sender;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Implementing automatic screen measurement through google analytics
    
    // May return nil if a tracker has not already been initialized with a
    // property ID.
    //Google analytics which will tell the this screen opened.
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    // This screen name value will remain set on the tracker and sent with
    // hits until it is set to a new value or to nil.
    [tracker set:kGAIScreenName value:@"Second Screen"];
    // New SDK versions
    [tracker send:[[GAIDictionaryBuilder createScreenView] build]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnBackClick:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}
@end
