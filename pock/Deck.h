//
//  Deck.h
//  pock
//
//  Created by runcrow on 14-3-17.
//  Copyright (c) 2014年 runcrow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;

@end
