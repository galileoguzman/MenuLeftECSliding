//
//  InitialSlidingViewController.m
//  ECSlidingViewController
//
//  Created by Michael Enriquez on 1/25/12.
//  Copyright (c) 2012 EdgeCase. All rights reserved.
//

#import "InitialSlidingViewController.h"

@implementation InitialSlidingViewController
@synthesize location;
/**********************************************************************************************/
#pragma mark - Initialization
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    self.topViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ToDoView"];
}
//-------------------------------------------------------------------------------
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return YES;
}

@end
