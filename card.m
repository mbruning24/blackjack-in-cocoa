//
//  card.m
//  BlackJack
//
//  Created by Mark Bruning on 3/25/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "card.h"


@implementation card

@synthesize suit;
@synthesize value;
@synthesize cardPointValue;
@synthesize cardImageFilePath;
@synthesize cardImage;

- (id) initWithSuit:(NSString *)Suit andValue:(NSString *)Value andPointValue:(int)ptVal andFilePath:(NSString *)FilePath {
	if ([super init]) {
		[self setSuit:Suit];
		[self setValue:Value];
		[self setCardPointValue:ptVal];
		[self setCardImageFilePath:FilePath];
		
		//Set CardImage with FilePath
		[self setCardImage:[[NSImage alloc] initWithContentsOfFile:FilePath]];
	}
	return self;
}

//Dealloc method
- (void) dealloc{
	[suit release];
	[value release];
	[cardImageFilePath release];
	[cardImage release];
	[super dealloc];
}

@end
