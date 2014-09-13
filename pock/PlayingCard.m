//
//  PlayingCard.m
//  pock
//
//  Created by runcrow on 14-3-18.
//  Copyright (c) 2014年 runcrow. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit = _suit;

+(NSArray *)valiudSuits{
    return @[@"♤",@"♧",@"♡",@"♢"];
}
+(NSArray *)rankStrings{
    return @[@"?",@"A",@"2",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

- (NSString *)contents{
    NSArray *rankStrings =[PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

+(NSUInteger)maxRank {
    //这里的 self 和上面的 playingcard rankStrings 有可见性问题。+里面的self，指类。－里面的self指对象，找累方法不能用self
    return [[self rankStrings] count]-1;
}




- (void)setSuit:(NSString *)suit{
    if([[PlayingCard valiudSuits] containsObject:suit])
        _suit=suit;
}
- (NSString *)suit{
   return _suit ?_suit : @"?" ;
}
- (void)setRank:(NSUInteger)rank{
    if (rank<= [PlayingCard maxRank]) {
        _rank=rank;
    }

}

@end
