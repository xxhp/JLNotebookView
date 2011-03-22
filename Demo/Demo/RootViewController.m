//
//  RootViewController.m
//  Demo
//
//  Created by Jarod Luebbert on 3/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"
#import "JLNotebookView.h"

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    JLNotebookView *notebookStyle = [[JLNotebookView alloc] initWithFrame:self.tableView.frame];
    notebookStyle.backgroundColor = [UIColor colorWithRed:251/255.0f green:248/255.0f blue:148/255.0f alpha:1.0];
    notebookStyle.lineColor = [UIColor colorWithRed:202/255.0f green:167/255.0 blue:131/255.0f alpha:1.0];
    self.tableView.backgroundView = notebookStyle;
    [notebookStyle release];
  
    self.tableView.separatorColor = [UIColor colorWithRed:180/255.0f green:188/255.0f blue:164/255.0f alpha:1.0];
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:77/255.0f green:55/255.0f blue:47/255.0f alpha:1.0f];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }

    // Configure the cell.
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc that aren't in use.
}

- (void)dealloc
{
    [super dealloc];
}

@end
