//
//  ListViewController.m
//  Time-Tracker
//
//  Created by Cal Henrie on 2/19/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ListViewController.h"
#import "ListTableViewDatasource.h"

@interface ListViewController ()
@property (strong, nonatomic) ListTableViewDatasource *externalDataSource;
@property (strong, nonatomic) UITableView *tableView;

@end

@implementation ListViewController

-(id)initWithNibName: (NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
	if (self) {
		self.externalDataSource  = [ListTableViewDatasource new];
	}
	return self;
}

-(void)viewDidLoad {
	[super viewDidLoad];
	self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
	self.tableView.dataSource = self.externalDataSource;
	[self.view addSubview:self.tableView];
	
}
@end
