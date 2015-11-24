// Private API and Implementation

/*

@implementation name of class
don't need name of super class since inheriting from .h file
*/

#import "Card.h" // import header file

// Private Declarations

@interface Card()

@end

@implementation Card

// Setter and getter made for us, can modify it if we want to

@synthesize contents = _contents; // _contents is the instance variable in which the property
								  // from contents is stored

- (NSString *)contents 			// Getter: method that returns (NSString *) with name "contents"
{
	return _contents;			// return the instance variable we synthesized
}

- (void)setContents:(NSString *)contents // Setter: arguement (NSString *)contents
{
	_contents = contents;				// sets instance variable to the argument
}

 // ^^ Won't see this when we use @property in the h file. Objective C makes these for us, publicly.

@synthesize chosen = _chosen;
@synthesize matched = _matched;

- (BOOL)isChosen
 {
 	return _chosen;
 }

- (void)setChosen: (BOOL)chosen
 {
 	_chosen = chosen;
 }

- (BOOL)isMatched
{
	return _matched
}

- (void)setMatched: (BOOL)matched
{
	_matched = matched;
}

// ^ won't see these because of @property and done for us

- (int)match:(NSArray *)otherCards
{
	int score = 0;

	for (Card *card in otherCards) {
		if ([card.contents isEqualToString:self.contents]){	// ["..."] indicate sending a message and "." notation
			score = 1;											// "==" would only compare pointers, not content
		}
	}

	return score;
}




















