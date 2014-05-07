//
//  deckController.h
//  BlackJack
//
//  Created by Mark Bruning on 3/25/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class card;
@interface deckController : NSObject {
	
	card* cluba;
	card* club2;
	card* club3;
	card* club4;
	card* club5;
	card* club6;
	card* club7;
	card* club8;
	card* club9;
	card* club10;
	card* clubJ;
	card* clubQ;
	card* clubK;
	card* diama;
	card* diam2;
	card* diam3;
	card* diam4;
	card* diam5;
	card* diam6;
	card* diam7;
	card* diam8;
	card* diam9;
	card* diam10;
	card* diamJ;
	card* diamQ;
	card* diamK;
	card* hearta;
	card* heart2;
	card* heart3;
	card* heart4;
	card* heart5;
	card* heart6;
	card* heart7;
	card* heart8;
	card* heart9;
	card* heart10;
	card* heartJ;
	card* heartQ;
	card* heartK;
	card* spadea;
	card* spade2;
	card* spade3;
	card* spade4;
	card* spade5;
	card* spade6;
	card* spade7;
	card* spade8;
	card* spade9;
	card* spade10;
	card* spadeJ;
	card* spadeQ;
	card* spadeK;
	
	NSArray* deck;

}
@property (retain) card* cluba;
@property (retain) card* club2;
@property (retain) card* club3;
@property (retain) card* club4;
@property (retain) card* club5;
@property (retain) card* club6;
@property (retain) card* club7;
@property (retain) card* club8;
@property (retain) card* club9;
@property (retain) card* club10;
@property (retain) card* clubJ;
@property (retain) card* clubQ;
@property (retain) card* clubK;
@property (retain) card* diama;
@property (retain) card* diam2;
@property (retain) card* diam3;
@property (retain) card* diam4;
@property (retain) card* diam5;
@property (retain) card* diam6;
@property (retain) card* diam7;
@property (retain) card* diam8;
@property (retain) card* diam9;
@property (retain) card* diam10;
@property (retain) card* diamJ;
@property (retain) card* diamQ;
@property (retain) card* diamK;
@property (retain) card* hearta;
@property (retain) card* heart2;
@property (retain) card* heart3;
@property (retain) card* heart4;
@property (retain) card* heart5;
@property (retain) card* heart6;
@property (retain) card* heart7;
@property (retain) card* heart8;
@property (retain) card* heart9;
@property (retain) card* heart10;
@property (retain) card* heartJ;
@property (retain) card* heartQ;
@property (retain) card* heartK;
@property (retain) card* spadea;
@property (retain) card* spade2;
@property (retain) card* spade3;
@property (retain) card* spade4;
@property (retain) card* spade5;
@property (retain) card* spade6;
@property (retain) card* spade7;
@property (retain) card* spade8;
@property (retain) card* spade9;
@property (retain) card* spade10;
@property (retain) card* spadeJ;
@property (retain) card* spadeQ;
@property (retain) card* spadeK;

@property (retain) NSArray* deck;

- (id) randomCard;


@end
