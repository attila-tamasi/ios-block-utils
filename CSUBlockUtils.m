//
//  CSUBlockUtils.m
//  Petlication
//
//  Created by Attila Tamasi on 27/01/14.
//  Copyright (c) 2014 Csu-csu. All rights reserved.
//

#import "CSUBlockUtils.h"

dispatch_time_t dispatchTimeFromNow(float seconds)
{
    return dispatch_time(DISPATCH_TIME_NOW, (seconds * 1000000000));
}

#pragma mark - Dispatch helpers

void dispatchOnMainQueue(dispatch_block_t block)
{
    dispatch_async(dispatch_get_main_queue(), block);
}

void dispatchOnBackgroundQueue(dispatch_block_t block)
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), block);
}

void dispatchOnMainQueueAfterDelayInSeconds(float delay, dispatch_block_t block)
{
    dispatchAfterDelayInSeconds(delay, dispatch_get_main_queue(), block);
}

void dispatchAfterDelayInSeconds(float delay, dispatch_queue_t queue, dispatch_block_t block)
{
    dispatch_after(dispatchTimeFromNow(delay), queue, block);
}
