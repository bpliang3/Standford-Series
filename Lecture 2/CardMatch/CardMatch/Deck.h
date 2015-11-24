//
//  Deck.h
//  
//
//  Created by Ben Liang on 11/24/15.
//
//

#import <Foundation/Foundation.h>
#import "Card.h"


@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card; 

- (Card *)drawRandomCard;
@end
