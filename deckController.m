//
//  deckController.m
//  BlackJack
//
//  Created by Mark Bruning on 3/25/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "deckController.h"
#include "card.h"

@implementation deckController

@synthesize cluba;
@synthesize club2;
@synthesize club3;
@synthesize club4;
@synthesize club5;
@synthesize club6;
@synthesize club7;
@synthesize club8;
@synthesize club9;
@synthesize club10;
@synthesize clubJ;
@synthesize clubQ;
@synthesize clubK;
@synthesize diama;
@synthesize diam2;
@synthesize diam3;
@synthesize diam4;
@synthesize diam5;
@synthesize diam6;
@synthesize diam7;
@synthesize diam8;
@synthesize diam9;
@synthesize diam10;
@synthesize diamJ;
@synthesize diamQ;
@synthesize diamK;
@synthesize hearta;
@synthesize heart2;
@synthesize heart3;
@synthesize heart4;
@synthesize heart5;
@synthesize heart6;
@synthesize heart7;
@synthesize heart8;
@synthesize heart9;
@synthesize heart10;
@synthesize heartJ;
@synthesize heartQ;
@synthesize heartK;
@synthesize spadea;
@synthesize spade2;
@synthesize spade3;
@synthesize spade4;
@synthesize spade5;
@synthesize spade6;
@synthesize spade7;
@synthesize spade8;
@synthesize spade9;
@synthesize spade10;
@synthesize spadeJ;
@synthesize spadeQ;
@synthesize spadeK;

@synthesize deck;

//init method
- (id) init {
	if ([super init]) {

		//Create ptr refs for filepaths and images
		NSString *fpClubA = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/club_a.jpg"];
		NSString *fpClub2 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/club_2.jpg"];
		NSString *fpClub3 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/club_3.jpg"];
		NSString *fpClub4 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/club_4.jpg"];
		NSString *fpClub5 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/club_5.jpg"];
		NSString *fpClub6 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/club_6.jpg"];
		NSString *fpClub7 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/club_7.jpg"];
		NSString *fpClub8 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/club_8.jpg"];
		NSString *fpClub9 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/club_9.jpg"];
		NSString *fpClub10 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/club_10.jpg"];
		NSString *fpClubJ = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/club_J.jpg"];
		NSString *fpClubQ = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/club_Q.jpg"];
		NSString *fpClubK = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/club_K.jpg"];
		NSString *fpDiamA = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/diam_a.jpg"];
		NSString *fpDiam2 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/diam_2.jpg"];
		NSString *fpDiam3 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/diam_3.jpg"];
		NSString *fpDiam4 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/diam_4.jpg"];
		NSString *fpDiam5 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/diam_5.jpg"];
		NSString *fpDiam6 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/diam_6.jpg"];
		NSString *fpDiam7 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/diam_7.jpg"];
		NSString *fpDiam8 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/diam_8.jpg"];
		NSString *fpDiam9 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/diam_9.jpg"];
		NSString *fpDiam10 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/diam_10.jpg"];
		NSString *fpDiamJ = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/diam_J.jpg"];
		NSString *fpDiamQ = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/diam_Q.jpg"];
		NSString *fpDiamK = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/diam_K.jpg"];
		NSString *fpHeartA = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/heart_a.jpg"];
		NSString *fpHeart2 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/heart_2.jpg"];
		NSString *fpHeart3 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/heart_3.jpg"];
		NSString *fpHeart4 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/heart_4.jpg"];
		NSString *fpHeart5 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/heart_5.jpg"];
		NSString *fpHeart6 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/heart_6.jpg"];
		NSString *fpHeart7 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/heart_7.jpg"];
		NSString *fpHeart8 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/heart_8.jpg"];
		NSString *fpHeart9 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/heart_9.jpg"];
		NSString *fpHeart10 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/heart_10.jpg"];
		NSString *fpHeartJ = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/heart_J.jpg"];
		NSString *fpHeartQ = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/heart_Q.jpg"];
		NSString *fpHeartK = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/heart_K.jpg"];
		NSString *fpSpadeA = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/spade_a.jpg"];
		NSString *fpSpade2 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/spade_2.jpg"];
		NSString *fpSpade3 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/spade_3.jpg"];
		NSString *fpSpade4 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/spade_4.jpg"];
		NSString *fpSpade5 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/spade_5.jpg"];
		NSString *fpSpade6 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/spade_6.jpg"];
		NSString *fpSpade7 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/spade_7.jpg"];
		NSString *fpSpade8 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/spade_8.jpg"];
		NSString *fpSpade9 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/spade_9.jpg"];
		NSString *fpSpade10 = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/spade_10.jpg"];
		NSString *fpSpadeJ = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/spade_J.jpg"];
		NSString *fpSpadeQ = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/spade_Q.jpg"];
		NSString *fpSpadeK = [NSHomeDirectory() stringByAppendingPathComponent:@"/Desktop/C Scripts/cards/spade_K.jpg"];
		
		//Use new init method for cards
		self.cluba = [[card alloc] initWithSuit:@"Club" andValue:@"Ace" andPointValue:(int)1 andFilePath:fpClubA];
		self.club2 = [[card alloc] initWithSuit:@"Club" andValue:@"2" andPointValue:(int)2 andFilePath:fpClub2];
		self.club3 = [[card alloc] initWithSuit:@"Club" andValue:@"3" andPointValue:(int)3 andFilePath:fpClub3];
		self.club4 = [[card alloc] initWithSuit:@"Club" andValue:@"4" andPointValue:(int)4 andFilePath:fpClub4];
		self.club5 = [[card alloc] initWithSuit:@"Club" andValue:@"5" andPointValue:(int)5 andFilePath:fpClub5];
		self.club6 = [[card alloc] initWithSuit:@"Club" andValue:@"6" andPointValue:(int)6 andFilePath:fpClub6];
		self.club7 = [[card alloc] initWithSuit:@"Club" andValue:@"7" andPointValue:(int)7 andFilePath:fpClub7];
		self.club8 = [[card alloc] initWithSuit:@"Club" andValue:@"8" andPointValue:(int)8 andFilePath:fpClub8];
		self.club9 = [[card alloc] initWithSuit:@"Club" andValue:@"9" andPointValue:(int)9 andFilePath:fpClub9];
		self.club10 = [[card alloc] initWithSuit:@"Club" andValue:@"10" andPointValue:(int)10 andFilePath:fpClub10];
		self.clubJ = [[card alloc] initWithSuit:@"Club" andValue:@"Jack" andPointValue:(int)10 andFilePath:fpClubJ];
		self.clubQ = [[card alloc] initWithSuit:@"Club" andValue:@"Queen" andPointValue:(int)10 andFilePath:fpClubQ];
		self.clubK = [[card alloc] initWithSuit:@"Club" andValue:@"King" andPointValue:(int)10 andFilePath:fpClubK];
		self.diama = [[card alloc] initWithSuit:@"Diamond" andValue:@"Ace" andPointValue:(int)1 andFilePath:fpDiamA];
		self.diam2 = [[card alloc] initWithSuit:@"Diamond" andValue:@"2" andPointValue:(int)2 andFilePath:fpDiam2];
		self.diam3 = [[card alloc] initWithSuit:@"Diamond" andValue:@"3" andPointValue:(int)3 andFilePath:fpDiam3];
		self.diam4 = [[card alloc] initWithSuit:@"Diamond" andValue:@"4" andPointValue:(int)4 andFilePath:fpDiam4];
		self.diam5 = [[card alloc] initWithSuit:@"Diamond" andValue:@"5" andPointValue:(int)5 andFilePath:fpDiam5];
		self.diam6 = [[card alloc] initWithSuit:@"Diamond" andValue:@"6" andPointValue:(int)6 andFilePath:fpDiam6];
		self.diam7 = [[card alloc] initWithSuit:@"Diamond" andValue:@"7" andPointValue:(int)7 andFilePath:fpDiam7];
		self.diam8 = [[card alloc] initWithSuit:@"Diamond" andValue:@"8" andPointValue:(int)8 andFilePath:fpDiam8];
		self.diam9 = [[card alloc] initWithSuit:@"Diamond" andValue:@"9" andPointValue:(int)9 andFilePath:fpDiam9];
		self.diam10 = [[card alloc] initWithSuit:@"Diamond" andValue:@"10" andPointValue:(int)10 andFilePath:fpDiam10];
		self.diamJ = [[card alloc] initWithSuit:@"Diamond" andValue:@"Jack" andPointValue:(int)10 andFilePath:fpDiamJ];
		self.diamQ = [[card alloc] initWithSuit:@"Diamond" andValue:@"Queen" andPointValue:(int)10 andFilePath:fpDiamQ];
		self.diamK = [[card alloc] initWithSuit:@"Diamond" andValue:@"King" andPointValue:(int)10 andFilePath:fpDiamK];
		self.hearta = [[card alloc] initWithSuit:@"Heart" andValue:@"Ace" andPointValue:(int)1 andFilePath:fpHeartA];
		self.heart2 = [[card alloc] initWithSuit:@"Heart" andValue:@"2" andPointValue:(int)2 andFilePath:fpHeart2];
		self.heart3 = [[card alloc] initWithSuit:@"Heart" andValue:@"3" andPointValue:(int)3 andFilePath:fpHeart3];
		self.heart4 = [[card alloc] initWithSuit:@"Heart" andValue:@"4" andPointValue:(int)4 andFilePath:fpHeart4];
		self.heart5 = [[card alloc] initWithSuit:@"Heart" andValue:@"5" andPointValue:(int)5 andFilePath:fpHeart5];
		self.heart6 = [[card alloc] initWithSuit:@"Heart" andValue:@"6" andPointValue:(int)6 andFilePath:fpHeart6];
		self.heart7 = [[card alloc] initWithSuit:@"Heart" andValue:@"7" andPointValue:(int)7 andFilePath:fpHeart7];
		self.heart8 = [[card alloc] initWithSuit:@"Heart" andValue:@"8" andPointValue:(int)8 andFilePath:fpHeart8];
		self.heart9 = [[card alloc] initWithSuit:@"Heart" andValue:@"9" andPointValue:(int)9 andFilePath:fpHeart9];
		self.heart10 = [[card alloc] initWithSuit:@"Heart" andValue:@"10" andPointValue:(int)10 andFilePath:fpHeart10];
		self.heartJ = [[card alloc] initWithSuit:@"Heart" andValue:@"Jack" andPointValue:(int)10 andFilePath:fpHeartJ];
		self.heartQ = [[card alloc] initWithSuit:@"Heart" andValue:@"Queen" andPointValue:(int)10 andFilePath:fpHeartQ];
		self.heartK = [[card alloc] initWithSuit:@"Heart" andValue:@"King" andPointValue:(int)10 andFilePath:fpHeartK];
		self.spadea = [[card alloc] initWithSuit:@"Spade" andValue:@"Ace" andPointValue:(int)1 andFilePath:fpSpadeA];
		self.spade2 = [[card alloc] initWithSuit:@"Spade" andValue:@"2" andPointValue:(int)2 andFilePath:fpSpade2];
		self.spade3 = [[card alloc] initWithSuit:@"Spade" andValue:@"3" andPointValue:(int)3 andFilePath:fpSpade3];
		self.spade4 = [[card alloc] initWithSuit:@"Spade" andValue:@"4" andPointValue:(int)4 andFilePath:fpSpade4];
		self.spade5 = [[card alloc] initWithSuit:@"Spade" andValue:@"5" andPointValue:(int)5 andFilePath:fpSpade5];
		self.spade6 = [[card alloc] initWithSuit:@"Spade" andValue:@"6" andPointValue:(int)6 andFilePath:fpSpade6];
		self.spade7 = [[card alloc] initWithSuit:@"Spade" andValue:@"7" andPointValue:(int)7 andFilePath:fpSpade7];
		self.spade8 = [[card alloc] initWithSuit:@"Spade" andValue:@"8" andPointValue:(int)8 andFilePath:fpSpade8];
		self.spade9 = [[card alloc] initWithSuit:@"Spade" andValue:@"9" andPointValue:(int)9 andFilePath:fpSpade9];
		self.spade10 = [[card alloc] initWithSuit:@"Spade" andValue:@"10" andPointValue:(int)10 andFilePath:fpSpade10];
		self.spadeJ = [[card alloc] initWithSuit:@"Spade" andValue:@"Jack" andPointValue:(int)10 andFilePath:fpSpadeJ];
		self.spadeQ = [[card alloc] initWithSuit:@"Spade" andValue:@"Queen" andPointValue:(int)10 andFilePath:fpSpadeQ];
		self.spadeK = [[card alloc] initWithSuit:@"Spade" andValue:@"King" andPointValue:(int)10 andFilePath:fpSpadeK];

		//Init array for deck
		[self setDeck:[NSArray arrayWithObjects:self.cluba,self.club2,self.club3,self.club4,self.club5,self.club6,self.club7,self.club8,
					   self.club9,self.club10,self.clubJ,self.clubQ,self.clubK,self.diama,self.diam2,self.diam3,self.diam4,self.diam5,
					   self.diam6,self.diam7,self.diam8,self.diam9,self.diam10,self.diamJ,self.diamQ,self.diamK,self.hearta,self.heart2,
					   self.heart3,self.heart4,self.heart5,self.heart6,self.heart7,self.heart8,self.heart9,self.heart10,self.heartJ,
					   self.heartQ,self.heartK,self.spadea,self.spade2,self.spade3,self.spade4,self.spade5,self.spade6,self.spade7,
					   self.spade8,self.spade9,self.spade10,self.spadeJ,self.spadeQ,self.spadeK,nil]];
	}
	return self;
}

//Random Card Generator
- (id) randomCard {
	int x = arc4random() % 52;
	card *chosenCard = [[self deck] objectAtIndex:x];
	return chosenCard;
}

//dealloc method
- (void) dealloc{
	[cluba release];
	[club2 release];
	[club3 release];
	[club4 release];
	[club5 release];
	[club6 release];
	[club7 release];
	[club8 release];
	[club9 release];
	[club10 release];
	[clubJ release];
	[clubQ release];
	[clubK release];
	[diama release];
	[diam2 release];
	[diam3 release];
	[diam4 release];
	[diam5 release];
	[diam6 release];
	[diam7 release];
	[diam8 release];
	[diam9 release];
	[diam10 release];
	[diamJ release];
	[diamQ release];
	[diamK release];
	[hearta release];
	[heart2 release];
	[heart3 release];
	[heart4 release];
	[heart5 release];
	[heart6 release];
	[heart7 release];
	[heart8 release];
	[heart9 release];
	[heart10 release];
	[heartJ release];
	[heartQ release];
	[heartK release];
	[spadea release];
	[spade2 release];
	[spade3 release];
	[spade4 release];
	[spade5 release];
	[spade6 release];
	[spade7 release];
	[spade8 release];
	[spade9 release];
	[spade10 release];
	[spadeJ release];
	[spadeQ release];
	[spadeK release];
	[super dealloc];
}
	
@end
