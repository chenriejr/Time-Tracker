//
//  Entry.m
//  Time-Tracker
//
//  Created by Cal Henrie on 2/19/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "Entry.h"

static NSString * const startTimeKey = @"startTime";
static NSString * const endTimeKey = @"endTime";

@implementation Entry

-(id)pullFromNSUD:(NSDictionary *)dictionary {
	self = [super init];
	if (self) {

	self.startTime = dictionary[startTimeKey];
	self.endTime = dictionary[endTimeKey];
	}
	return self;
}

-(NSDictionary *)pushToNSUD {
	NSDictionary *entryDictionary = [NSDictionary new];
	//If there is a start time, save it down to NSUD
	if (self.startTime) {
[entryDictionary setValue:<#(id)#> forKey:<#(NSString *)#>]	}
	//If there's an end time, save it down to NSUD
	if (self.endTime) {
		[[NSUserDefaults standardUserDefaults] setObject:self.endTime forKey:endTimeKey];
	}
}
@end
