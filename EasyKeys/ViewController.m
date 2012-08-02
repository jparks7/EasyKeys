//
//  ViewController.m
//  EasyKeys
//
//  Created by iOS Camp on 8/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) AVAudioPlayer *player;
@property (nonatomic, strong) AVAudioPlayer *player2;

@end

@implementation ViewController
@synthesize player;
@synthesize player2;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSURL *fileURL = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"C" ofType:@"m4a"]];
    
    NSURL *fileURLE = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"E" ofType:@"m4a"]];
    
    self.player = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
    if (self.player) {
        player.numberOfLoops = 0;
        
    }
    
    self.player2 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURLE error:nil];
    if (self.player2) {
        player2.numberOfLoops = 0;
        
    }
    
                          
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (IBAction)playNote:(UIButton *)sender {
    player.currentTime = 0;
    [player play];
}

- (IBAction)stopNote:(UIButton *)sender {
    [player stop];
}

- (IBAction)playENote:(UIButton *)sender {
    player2.currentTime = 0;
    [player2 play];
}

- (IBAction)stopENote:(UIButton *)sender {
    [player2 stop];
}
@end
