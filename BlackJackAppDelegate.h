//
//  BlackJackAppDelegate.h
//  BlackJack
//
//  Created by Mark Bruning on 4/20/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//
//  NSImageView should be 83x129

#import <Cocoa/Cocoa.h>

@class deckController;
@class hand;
@class card;
@interface BlackJackAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
	IBOutlet NSView* playerView;
	IBOutlet NSView* dealerView;
	
	deckController* mainDeck;
	NSMutableArray* Deck;
	hand* playerHand;
	hand* dealerHand;
	
	IBOutlet NSButton* dealButton;
	IBOutlet NSButton* hitButton;
	IBOutlet NSButton* stayButton;
	
	IBOutlet NSTextField* playerPoints;
	IBOutlet NSTextField* dealerPoints;
	IBOutlet NSTextField* readout;
	
}

@property (assign) IBOutlet NSWindow *window;
@property (retain) deckController* mainDeck;
@property (retain) NSMutableArray* Deck;
@property (retain) hand* playerHand;
@property (retain) hand* dealerHand;

- (IBAction) dealAndStartGame:(id)sender;
- (IBAction) playerHit:(id)sender;
- (IBAction) playerStay:(id)sender;

- (void) displayPlayerHand;
- (void) displayDealerHand;
- (void) displayDealerHandMasked;
- (id) cardPrintStatement:(card *)card1;
- (id) printStatement;
- (id) randomHitCard;
- (BOOL) isBusted;
- (BOOL) hasBlackJack:(hand *)Hand;

- (void) dealerStart;
- (void) dealerHit;
- (void) dealerStay;
- (void) dealerBust;
- (void) switchEnabled;
- (void) score;
- (void) playerBlackJack;

@end
