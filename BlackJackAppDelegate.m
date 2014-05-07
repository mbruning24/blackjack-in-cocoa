//
//  BlackJackAppDelegate.m
//  BlackJack
//
//  Created by Mark Bruning on 4/20/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "BlackJackAppDelegate.h"
#include "deckController.h"
#include "hand.h"
#include "card.h"

@implementation BlackJackAppDelegate

@synthesize window;
@synthesize mainDeck;
@synthesize Deck;
@synthesize playerHand;
@synthesize dealerHand;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application 
}

- (id) init {
	if ([super init]) {
		self.mainDeck = [[deckController alloc] init];
		[dealButton setEnabled:YES];
		[hitButton setEnabled:NO];
		[stayButton setEnabled:NO];
	}
	return self;
}

- (IBAction) dealAndStartGame:(id)sender {
	[readout setStringValue:@"Cards have been dealt."];
	
	//Set tempDeck
	[self setDeck:[NSMutableArray arrayWithArray:[mainDeck deck]]];
	
	//Create four different, random cards
	card *a = [mainDeck randomCard];
	card *b = [mainDeck randomCard];
	while (a == b) {
		b = [mainDeck randomCard];
	}
	card *c = [mainDeck randomCard];
	while (c == a || c == a) {
		c = [mainDeck randomCard];
	}
	card *d = [mainDeck randomCard];
	while (d == c || d == b || d == a) {
		d = [mainDeck randomCard];
	}
	
	//Set the two hands, each with two cards
	[self setPlayerHand:[[hand alloc] initWithCards:a andCard:b]];
	[self setDealerHand:[[hand alloc] initWithCards:c andCard:d]];
	
	//Remove four cards from Deck
	NSArray *toDelete = [NSArray arrayWithObjects:a,b,c,d,nil];
	[[self Deck] removeObjectsInArray:toDelete];
	
	//Display playerHand and dealerHandMasked
	[self displayPlayerHand];
	[self displayDealerHandMasked];
	
	//Display points and printout
	[playerPoints setIntValue:[[self playerHand]points]];
	[dealerPoints setStringValue:@""];
	
	//Enable Hit, Stay, Disable Deal
	[self switchEnabled];
	
	//Check for player BlackJack
	if ([self hasBlackJack:[self playerHand]]) {
		[self performSelector:@selector(playerBlackJack) withObject:nil afterDelay:1.0];
	}
	
}

- (IBAction) playerHit:(id)sender {
	//Add Card to playerHand and remove from Deck
	card *newcard = [self randomHitCard];
	[[self playerHand] addCardToHand:newcard];
	
	//Redisplay playerHand
	[self displayPlayerHand];
	
	//Redisplay points and readout
	[readout setStringValue:[self cardPrintStatement:newcard]];
	[playerPoints setIntValue:[[self playerHand] points]];
	
	
	//Check for Bust
	if ([self isBusted] == YES) {
		[readout setStringValue:@"You Bust."];
		
		[self switchEnabled];
	}
}

- (IBAction) playerStay:(id)sender {
	[readout setStringValue:@"You have stayed. Dealer will play."];
	[hitButton setEnabled:NO];
	[stayButton setEnabled:NO];
	[self performSelector:@selector(dealerStart) withObject:nil afterDelay:1.5];
}

- (void) displayPlayerHand {
	//Clear all subviews to ready for redrawing
	while ([[playerView subviews] count] > 0) {
		for (int i = 0;i < [[playerView subviews] count];i++) {
			[[[playerView subviews] objectAtIndex:i] removeFromSuperview];
		}
	}
	
	//Allocate ImageViews as subviews of the playerView and display card images based on cards in hand
	for (int x = 0;x < [[[self playerHand] cardsInHand] count];x++) {
		NSImageView *cardView = [[NSImageView alloc] initWithFrame:NSMakeRect((30*x), 0, 83, 129)];
		[playerView addSubview:cardView];
		[cardView setImageScaling:NSScaleToFit];
		[cardView setImage:[[[[self playerHand] cardsInHand] objectAtIndex:x] cardImage]];
	}
}

- (void) displayDealerHandMasked {
	//Clear subviews
	while ([[dealerView subviews] count] > 0) {
		for (int i=0;i<[[dealerView subviews] count];i++) {
			[[[dealerView subviews] objectAtIndex:i] removeFromSuperview];
		}
	}
	//Allocate two imageviews, set one to first card and other to masked card
	NSImageView *shownCard = [[NSImageView alloc] initWithFrame:NSMakeRect(0, 0, 83, 129)];
	NSImageView *maskedCard = [[NSImageView alloc] initWithFrame:NSMakeRect(30, 0, 83, 129)];
	[dealerView	addSubview:shownCard];
	[dealerView addSubview:maskedCard];
	[shownCard setImageScaling:NSScaleToFit];
	[maskedCard setImageScaling:NSScaleToFit];
	[shownCard setImage:[[[[self dealerHand] cardsInHand] objectAtIndex:0] cardImage]];
	[maskedCard setImage:[[NSImage alloc] initWithContentsOfFile:[NSHomeDirectory() stringByAppendingString:@"/Desktop/C Scripts/cards/card_back.jpg"]]];
}

- (void) displayDealerHand {
	//Clear all subviews to ready for redrawing
	while ([[dealerView subviews] count] > 0) {
		for (int i = 0;i < [[dealerView subviews] count];i++) {
			[[[dealerView subviews] objectAtIndex:i] removeFromSuperview];
		}
	}
	
	//Allocate ImageViews as subviews of the dealerView and display card images based on cards in hand
	for (int x = 0;x < [[[self dealerHand] cardsInHand] count];x++) {
		NSImageView *cardView = [[NSImageView alloc] initWithFrame:NSMakeRect((30*x), 0, 83, 129)];
		[dealerView addSubview:cardView];
		[cardView setImageScaling:NSScaleToFit];
		[cardView setImage:[[[[self dealerHand] cardsInHand] objectAtIndex:x] cardImage]];
	}
}

- (id) cardPrintStatement:(card *)card1 {
	NSString *cardSuit = [card1 suit];
	NSString *cardValue = [card1 value];
	NSString *string = [NSString stringWithFormat:@"The %@ of %@s.",cardValue,cardSuit];
	return string;
}

- (id) printStatement {
	int a = [[self playerHand] points];
	int b = [[self dealerHand] points];
	int c = [[self Deck] count];
	
	NSString *string = [NSString stringWithFormat:@"You have %d points. Dealer has %d points. Deck = %d.",a,b,c];
	
	return string;
}

- (id) randomHitCard {
	int x = arc4random() % [[self Deck] count];
	card *newcard = [[self Deck] objectAtIndex:x];
	[[self Deck] removeObjectAtIndex:x];
	return newcard;
}

- (BOOL) isBusted {
	if ([[self playerHand] points] > 21) {
		return YES;
	}
	else {
		return NO;
	}
}

- (BOOL) hasBlackJack:(hand *)Hand {
	if ([[Hand cardsInHand] count] > 2) {
		return NO;
	}
	if ([Hand points] == 21) {
		return YES;
	}
	else {
		return NO;
	}
}

- (void) switchEnabled {
	if ([dealButton isEnabled] == YES) {
		[dealButton setEnabled:NO];
	}
	else {
		[dealButton setEnabled:YES];
	}
	if ([hitButton isEnabled] == YES) {
		[hitButton setEnabled:NO];
	}
	else {
		[hitButton setEnabled:YES];
	}
	if ([stayButton isEnabled] == YES) {
		[stayButton setEnabled:NO];
	}
	else {
		[stayButton setEnabled:YES];
	}
}

- (void) dealerStart {
	//Determine Dealer Points
	[self displayDealerHand];
	int dPts = [[self dealerHand] points];
	[dealerPoints setIntValue:[[self dealerHand] points]];
	
	//Either hit and repeat, or stay
	if (dPts <= 16) {
		[self performSelector:@selector(dealerHit) withObject:nil afterDelay:1.5];
	}
	else if (dPts <= 21) {
		[self performSelector:@selector(dealerStay) withObject:nil afterDelay:1.5];
	}
	//Else, dealer busts
	else {
		[self performSelector:@selector(dealerBust) withObject:nil afterDelay:1.5];
	}
}

- (void) dealerHit {
	NSString *printout = [self cardPrintStatement:[[self dealerHand] lastCard]];
	[readout setStringValue:[NSString stringWithFormat:@"%@ Dealer hits.",printout]];
	
	//Hit actions
	card *newcard = [self randomHitCard];
	[[self dealerHand] addCardToHand:newcard];
	
	//... HERE'S WHERE TO PUT IN THE ANIMATION CODE LATER ...//
	
	//Run check again (dealerStart)
	[self performSelector:@selector(dealerStart) withObject:nil afterDelay:1.5];
}

- (void) dealerStay {
	NSString *printout = [self cardPrintStatement:[[self dealerHand] lastCard]];
	[readout setStringValue:[NSString stringWithFormat:@"%@ Dealer stays.",printout]];
	
	//Perform Score action
	[self performSelector:@selector(score) withObject:nil afterDelay:1.5];
}

- (void) dealerBust {
	[readout setStringValue:@"Dealer has busted. You win."];
	[dealButton setEnabled:YES];
	//[self switchEnabled];
}

- (void) score {
	int pPts = [[self playerHand] points];
	int dPts = [[self dealerHand] points];
	
	if (pPts > dPts) {
		[readout setStringValue:@"You win."];
	}
	else if (pPts < dPts) {
		[readout setStringValue:@"You lose."];
	}
	else {
		[readout setStringValue:@"Game was a Tie. Push."];
	}
	//[self switchEnabled];
	[dealButton setEnabled:YES];
}

- (void) playerBlackJack {
	[readout setStringValue:@"You have BlackJack. You win."];
	[self switchEnabled];
}

@end
