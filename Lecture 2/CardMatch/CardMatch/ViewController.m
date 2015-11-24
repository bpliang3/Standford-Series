//
//  ViewController.m
//  CardMatch
//
//  Created by Ben Liang on 11/24/15.
//  Copyright (c) 2015 Ben Liang. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCard.h"
#import "PlayingCardDeck.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)touchCardButton:(UIButton *)sender {
    
    PlayingCardDeck *Deck = [PlayingCardDeck new];
    PlayingCard *Card  = (PlayingCard*)Deck.drawRandomCard;
    
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage: [UIImage imageNamed:@"CardBack"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
    
        [sender setBackgroundImage: [UIImage imageNamed:@"CardFront"]
                        forState:UIControlStateNormal];
        [sender setTitle:Card.contents
                forState:UIControlStateNormal];
       // NSLog(@"card contents = %@", Card.contents);

    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
