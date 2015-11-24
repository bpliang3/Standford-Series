#import "Deck.h"

@interface Deck()
@property (strong, nonatmoic) NSMutableArray *cards; // of Card, mutable means we can add to it
@end

@implementation Deck


- (NSMutableArray *)cards
{
	if(!_cards) _cards = [[NSMutableArray alloc] init]; // everytime self.cards, won't return NIL array
	return _cards;
}

- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
	if (atTop) {
		[self.cards insertObject:card atIndex:0];
	} else {
		[self.cards addOject:card];
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
		[self.cards removeOjectAtIndex:index];
	}

	
	return randomCard;
}

@end