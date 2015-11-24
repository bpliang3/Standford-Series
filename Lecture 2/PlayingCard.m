#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *)contents
{
	//return [NSString stringWithFormat:@"%d%@", self.rank, self.suit];
	NSArray *rankStrings = [PlayingCard rankStrings];
	return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit; // because we provide setter AND getter


+ (NSArray *)validSuits // class method, not instance method. Use for creating things, and utility methods
{
	return @[@"Heart", @"Spade", @"Diamond", @"Club"];
}

+ (NSArray *)rankStrings
{
	return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+ (NSUInteger)maxRank
{
	return [[self rankStrings] count] - 1;
}


- (void)setRank: (NSUInteger)rank
{
	if(rank <= [PlayingCard maxRank]){
		_rank = rank;
	}
}

- (void)setSuit:(NSString *)suit
{
	if( [[PlayingCard validSuits] containsObject:suit]) {
		_suit = suit;
	}
}


- (NSString *)suit
{
	return _suit ? _suit : @"?";
}

@end