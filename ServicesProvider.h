//
//  ServicesProvider.h
//  Services for Terminal
//
//  Created by yt on 13/08/30.
//  Copyright 2013 yt. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SuicideCommiter : NSObject {
}
- (void)onTimer:(NSTimer *)timer;
@end

@interface ServicesProvider : NSObject {
	SuicideCommiter *suicideCommiter;
	NSTimer *suicideTimer;
}
@end
