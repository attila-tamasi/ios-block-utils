//
//  CSUBlockUtils.h
//  Petlication
//
//  Created by Attila Tamasi on 27/01/14.
//  Copyright (c) 2014 Csu-csu. All rights reserved.
//

@import Foundation;

void dispatchOnMainQueue(dispatch_block_t block);

void dispatchOnMainQueueAfterDelayInSeconds(float delay, dispatch_block_t block);

void dispatchOnBackgroundQueue(dispatch_block_t block);

void dispatchAfterDelayInSeconds(float delay, dispatch_queue_t queue, dispatch_block_t block);
