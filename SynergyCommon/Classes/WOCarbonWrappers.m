//
//  WOCarbonWrappers.m
//  Synergy
//
//  Created by Greg Hurrell on Tue Dec 31 2002.
//  Copyright 2002-present Greg Hurrell.

#import <Carbon/Carbon.h>

#import "WOCarbonWrappers.h"
#import "WODebug.h"

@implementation WOCarbonWrappers
/*"
WOCarbonWrappers is a collection of wrapper factory methods for procedural
 Carbon code.
 "*/

+ (void)bringSelfToFront
{
    // Find out my PID
    ProcessSerialNumber myPID;
    OSErr errCode;

    errCode = GetCurrentProcess(&myPID);

    // Try bringing me to the "front"
    if (errCode == noErr)
        (void)SetFrontProcess(&myPID);
    else
        ELOG(@"Unable to determine current process ID");
}

@end
