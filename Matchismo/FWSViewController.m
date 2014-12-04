//
//  FWSViewController.m
//  Matchismo
//
//  Created by abruzzim on 11/30/14.
//  Copyright (c) 2014 Framework Solutions, LLC. All rights reserved.
//

#import "FWSViewController.h"

@interface FWSViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;

// Private storage within which to keep each card array pointer.
// Make space in the instance for the pointer "cards".

@property (nonatomic) NSMutableArray *cards; // Collection of cards.

@end

@implementation FWSViewController

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flipCount value is: %d", self.flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    
    if ([sender.currentTitle length]) {
        
        // Display the back of the card.
        
        // The sender (button) will send a message to
        // set the background image to the cardback and
        // set the button title to the empty string.
        
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle:@""
                forState:UIControlStateNormal];

    } else {
        
        // Display the front of the card.
        
        // The sender (button) will send a message to
        // set the background image to the cardfront and
        // set the button title to the NSString A♣️"
        
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"A♣️" forState:UIControlStateNormal];
        
    }
    
    // This invokes bother the "getter" and "setter"
    // methods of this view controller.
    
    self.flipCount++;
}

@end
