//
//  MenuController.m
//  MenuLateral
//
//  Created by Galileo Guzman on 17/09/15.
//  Copyright (c) 2015 GalileoGuzman. All rights reserved.
//

#import "MenuController.h"
#import "ECSlidingViewController.h"
#import "MenuCell.h"


NSMutableArray *menuList;


@interface MenuController ()

@end

@implementation MenuController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    [self.slidingViewController setAnchorRightRevealAmount:280.0f];
    self.slidingViewController.underLeftWidthLayout = ECFullWidth;
    
    menuList = [NSMutableArray arrayWithObjects:
                   @"Home",
                   @"Settings",
                   @"Config",
                   @"New Item",
                   nil];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Tableview DataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [menuList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"cellMenuItem";
    MenuCell *cell = (MenuCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    
    if (cell == nil) {
        cell = [[MenuCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    //NSLog(menuList[indexPath.row]);
    cell.lblItemMenu.text = menuList[indexPath.row];
    
    return cell;
}

#pragma mark - Tableview Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //[self menuViewControllerDidFinishWithCategoryId:indexPath.row];
    
}


@end
