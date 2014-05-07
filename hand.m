//
//  hand.m
//  BlackJack
//
//  Created by Mark Bruning on 4/6/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "hand.h"
#include "card.h"


@implementation hand

@synthesize cardsInHand;

- (id) initWithCards:(card *)card1 andCard:(card *)card2 {
	if ([super init]) {
		NSArray *handArr = [NSArray arrayWithObjects:card1, card2, nil];
		[self setCardsInHand:[NSMutableArray arrayWithArray:handArr]];
	}
	return self;
}

- (int) points {
	int pointTotal = 0;
	NSMutableArray *cards = [NSMutableArray arrayWithArray:cardsInHand];
	NSMutableArray *toMove = [[NSMutableArray alloc] initWithCapacity:2];
	for (int i = 0; i < [cards count]; i++) {
		if ([[cards objectAtIndex:i] value] == @"Ace") {
			[toMove addObject:[cards objectAtIndex:i]];
		}
	}
	[cards removeObjectsInArray:toMove];
	for (int x = 0; x < [toMove count]; x++) {
		[cards addObject:[toMove objectAtIndex:x]];
	}
	for (int y = 0; y < [cards count]; y++) {
		if ([[cards objectAtIndex:y] value] == @"Ace") {
			if (pointTotal <= 10) {
				pointTotal = pointTotal + 11;
			}
			else {
				pointTotal = (pointTotal + [[cards objectAtIndex:y] cardPointValue]);
			}
		}
		else {
			pointTotal = (pointTotal + [[cards objectAtIndex:y] cardPointValue]);
		}
	}
	return pointTotal;
}

- (void) addCardToHand:(card *)newcard {
	[[self cardsInHand] addObject:newcard];
}

- (id) lastCard {
	card *last = [[self cardsInHand] objectAtIndex:([[self cardsInHand] count]-1)];
	return last;
}

		
//dealloc method
- (void) dealloc {
	[cardsInHand release];
	[super dealloc];
}

@end
