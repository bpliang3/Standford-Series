// Public API

/*


@interface name of class : superclass
name of class should be the same as the name of the .h file
*/


//#import <Foundation/NSObject.h> // must import superclass

#import <Founodation/Foundation.h> // import entire framework
//@import Foundation; // IOS 7 syntax, still supports foundation.h

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents; // whats on the card. need storage for EACH instance of "card"

@property (nonatomic, getter=isChosen) BOOL chosen;		// Primitive types not stored in heap, so don't need strong or weak
@property (nonatomic, getter=isMatched) BOOL matched;

- (int)match: (NSArray *)otherCards;	// our own method