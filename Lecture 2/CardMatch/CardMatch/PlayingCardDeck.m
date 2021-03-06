//
//  PlayingCardDeck.m
//  
//
//  Created by Ben Liang on 11/24/15.
//
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"


@interface PlayingCardDeck ()

@end

@implementation PlayingCardDeck

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
    }
    
    return self;
}

@end
