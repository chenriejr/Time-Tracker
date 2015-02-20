//
//  ProjectController.m
//  Time-Tracker
//
//  Created by Cal Henrie on 2/19/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ProjectController.h"

static NSString * const projectListKey = @"projectList";

@interface ProjectController ()

@property (nonatomic, strong) NSArray *projects;

@end


@implementation ProjectController

//Create Model Object
+ (ProjectController *)sharedInstance {
	static ProjectController *sharedInstance = nil;
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		sharedInstance = [[ProjectController alloc] init];
	});
	return sharedInstance;
}

-(void)addProject:(Project *)project {
	if (!project) {
		return;
	}
	NSMutableArray *projectArray = [[NSMutableArray alloc] initWithArray:self.projects];
	[projectArray addObject:project];
	self.projects = projectArray;
}

-(void)removeProject:(Project *)project {
	if (!project) {
		return;
	}
	NSMutableArray *mutableEntries = [[NSMutableArray alloc] initWithArray:self.projects];
	[mutableEntries removeObject:project];
	self.projects = mutableEntries;
}

-(void)synchronize {
	
}





@end
