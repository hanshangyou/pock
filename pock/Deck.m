//
//  Deck.m
//  pock
//
//  Created by runcrow on 14-3-17.
//  Copyright (c) 2014年 runcrow. All rights reserved.
//

#import "Deck.h"
@interface Deck()
@property (strong,nonatomic) NSMutableArray *cards;
@end


@implementation Deck
- (NSMutableArray *)cards{
    
    //延迟实例化；
    if (!_cards)
        _cards = [[NSMutableArray alloc] init];
    return _cards;

}


- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if (atTop)
        [self.cards insertObject:card atIndex:0];
    else
        [self.cards addObject:card];
    
    
}
- (void)addCard:(Card *)card
{
    [self addCard:card atTop:NO];
}

- (Card *)drawRandomCard
{
    Card *drawnCard = nil;
    unsigned index = arc4random() % [self.cards count];
    drawnCard = self.cards[index];
    [self.cards removeObjectAtIndex:index];
    return drawnCard;
}





@end
