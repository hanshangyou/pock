//
//  PlayingCard.h
//  pock
//
//  Created by runcrow on 14-3-18.
//  Copyright (c) 2014年 runcrow. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong,nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+(NSArray *)valiudSuits;
+(NSUInteger)maxRank;

@end
