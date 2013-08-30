//
//  main.m
//  Services for Terminal
//
//  Created by yt on 13/08/30.
//  Copyright 2013 yt. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ServicesProvider.h"

int main(__unused int argc, __unused char *argv[])
{
	NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
	
	ServicesProvider *services = [[[ServicesProvider alloc] init] autorelease];

	NSApplication *app = [NSApplication sharedApplication];
	[app setServicesProvider:services];

//	NSRegisterServicesProvider(services, @"editSelectedFileInTerminal");

	[[NSRunLoop currentRunLoop] run];
	
	[pool release];
	return 0;
}
