//
//  card.h
//  BlackJack
//
//  Created by Mark Bruning on 3/25/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface card : NSObject {
	NSString* suit;
	NSString* value;
	//int cardPointValue;
	NSString* cardImageFilePath;
	NSImage* cardImage;
}

@property (retain) NSString* suit;
@property (retain) NSString* value;
@property (assign) int cardPointValue;
@property (retain) NSString* cardImageFilePath;
@property (retain) NSImage* cardImage;

- (id) initWithSuit:(NSString *)Suit andValue:(NSString *)Value andPointValue:(int)ptVal andFilePath:(NSString *)FilePath;

@end
