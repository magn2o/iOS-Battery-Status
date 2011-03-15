/* Return current battery status and level on iOS device */

#import <Foundation/Foundation.h>
#import <UIKit/UIDevice.h>
#include <stdio.h>

int main(int argc, char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	NSArray *batteryStatus = [NSArray arrayWithObjects:
		@"Battery status is unknown.",
		@"Battery is in use.",
		@"Battery is charging.",
		@"Battery is fully charged.", nil];

	[[UIDevice currentDevice] setBatteryMonitoringEnabled:YES];

	NSString *batteryMsg = [NSString stringWithFormat: @"%@ (%0.0f%%)",
				[batteryStatus objectAtIndex:[[UIDevice currentDevice] batteryState]],
				[[UIDevice currentDevice] batteryLevel] * 100];

	NSLog(@"%@", batteryMsg);

	[pool release];
	return 0;
}

