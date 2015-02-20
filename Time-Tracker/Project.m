//
//  Project.m
//  Time-Tracker
//
//  Created by Cal Henrie on 2/19/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "Project.h"
static NSString *const titleKey = @"title";
static NSString *const entriesKey = @"entries";

@implementation Project

#pragma NSUserDefaults Methods

-(id)pullFromNSUD:(NSDictionary *)dictionary {
	self = [super init];
	if (self) {
		//Set the Title
		self.title = dictionary[titleKey];
		
		//Set the EntrIES
		NSMutableArray *entries = [NSMutableArray new];
		for (NSDictionary *entry in dictionary[entriesKey]) {
			[entries addObject:[[Entry alloc] pullFromNSUD:entry]];
		}
		self.entries = entries;
	}
	return self;
}

-(NSDictionary *)pushToNSUD {
	NSMutableDictionary *projectDictionary = [NSMutableDictionary new];
	if (self.title) {
		[projectDictionary]
	}[pushDictionary setObject: forKey:]
	return pushDictionary;
}

-(void)synchronize {
	
}

-(void)addEntry:(Entry *)entry{
	//Make sure the entry isn't blank
	if (!entry) {
		return;
	}
	//Copy Paste, create a new array exactly like our list of entries
	NSMutableArray *mutableEntries = [[NSMutableArray alloc] initWithArray:self.entries];
	[mutableEntries addObject:entry];
	self.entries = mutableEntries;
}

-(void)removeEntry:(Entry *)entry{
	if (!entry) {
		return;
	}
	NSMutableArray *mutableEntries = [[NSMutableArray alloc] initWithArray:self.entries];
	[mutableEntries removeObject:entry];
	self.entries = mutableEntries;                                                    
	
}


@end
