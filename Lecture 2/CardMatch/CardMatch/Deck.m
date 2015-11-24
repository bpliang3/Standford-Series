//
//  Deck.m
//  
//
//  Created by Ben Liang on 11/24/15.
//
//

#import "Deck.h"

@interface Deck ()
@property (nonatomic, strong) NSMutableArray *cards;
@end

@implementation Deck
- (NSMutableArray *)cards
{
    if(!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card];
    }
    
}

- (void)addCard:(Card *)card // just calls the other function, with default atTop = NO
{
    [self addCard:card atTop:NO];
}


- (Card *)drawRandomCard
{
    Card *randomCard = nil;
    
    if ([self.cards count]) {
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    
    
    return randomCard;
}

@end
