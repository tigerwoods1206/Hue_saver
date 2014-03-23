//
//  ViewController.m
//  Hue_saver
//
//  Created by オオタ イサオ on 2014/03/23.
//  Copyright (c) 2014年 オオタ イサオ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
   // AVFound_rapper *sabON;
   // AVFound_rapper *swing;
}

@end


@implementation ViewController

- (void)viewDidLoad
{
    //TEST
    [super viewDidLoad];
    // sabON = [[AVFound_rapper alloc] initWithFile:@"SaberOn.wav"];
    // swing = [[AVFound_rapper alloc] initWithFile:@"Swing02.WAV"];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)sound_ON:(id)sender
{
    //AVFound_rapper *rapav = [[AVFound_rapper alloc] initWithFile:@"SaberOn.wav"];
   // [sabON sound_ON];
    
    [[SEManager sharedManager] playSound:@"SaberOn.wav"];
}

-(IBAction)fight_saver:(id)sender
{
     //[saver_swing play];
   // AVFound_rapper *rapav = [[AVFound_rapper alloc] initWithFile:@"Swing02.WAV"];
   // [swing sound_ON];
      [[SEManager sharedManager] playSound:@"Swing02.WAV"];
   
}

@end
