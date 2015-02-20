//
//  Project.h
//  Time-Tracker
//
//  Created by Cal Henrie on 2/19/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

@interface Project : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSArray *entries;

-(id)pullFromNSUD:(NSDictionary *)dictionary;
-(NSDictionary *)pushToNSUD;

-(void)addEntry:(Entry *)entry;
-(void)removeEntry:(Entry *)entry;

-(void)synchronize;

@end
