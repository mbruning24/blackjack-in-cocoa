//
//  hand.h
//  BlackJack
//
//  Created by Mark Bruning on 4/6/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class card;
@interface hand : NSObject {
	NSMutableArray* cardsInHand;

}
@property (retain) NSMutableArray* cardsInHand;

- (id) initWithCards:(card *)card1 andCard:(card *)card2;
- (int) points;
- (void) addCardToHand:(card *)newcard;
- (id) lastCard;

@end
