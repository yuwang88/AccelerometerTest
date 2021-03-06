//
//  AccelerationInfo.m
//  AccSim
//
//  Created by Otto Chrons on 9/26/08.
//  Copyright 2008 Enzymia Ltd.. All rights reserved.
//

#import "AccelerationInfo.h"


@implementation AccelerationInfo

@synthesize deviceID;
@synthesize absTime;
@synthesize x, y, z;

+ (AccelerationInfo*)createWithTimestamp:(NSTimeInterval)timeStamp X:(UIAccelerationValue)x Y:(UIAccelerationValue)y Z:(UIAccelerationValue)z
{
    CFUUIDRef UUID = CFUUIDCreate(kCFAllocatorDefault);
    CFStringRef UUIDString = CFUUIDCreateString(kCFAllocatorDefault,UUID);
    
	AccelerationInfo *newInfo = [AccelerationInfo alloc];

	newInfo.absTime = timeStamp;
	newInfo.deviceID = CFBridgingRelease(UUIDString);
	newInfo.x = x;
	newInfo.y = y;
	newInfo.z = z;
	
	return newInfo;
}

+ (AccelerationInfo*)createWithTimestamp:(NSTimeInterval)timeStamp X:(UIAccelerationValue)x Y:(UIAccelerationValue)y Z:(UIAccelerationValue)z deviceID:(NSString *)devID;
{
	AccelerationInfo *newInfo = [AccelerationInfo alloc];
	newInfo.absTime = timeStamp;
	newInfo.deviceID = devID;
	newInfo.x = x;
	newInfo.y = y;
	newInfo.z = z;

	return newInfo;
}

@end
