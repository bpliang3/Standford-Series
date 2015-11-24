//
//  ViewController.m
//  CardMatch
//
//  Created by Ben Liang on 11/24/15.
//  Copyright (c) 2015 Ben Liang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)touchCardButton:(UIButton *)sender {
    
    
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage: [UIImage imageNamed:@"CardBack"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        [sender setBackgroundImage: [UIImage imageNamed:@"CardFront"]
                        forState:UIControlStateNormal];
        [sender setTitle:@"HELLO" forState:UIControlStateNormal];
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
