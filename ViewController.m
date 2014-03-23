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
    AVAudioPlayer *light_saver;
    AVAudioPlayer *saver_fight;
    AVAudioPlayer *saver_on;
    AVAudioPlayer *saver_swing;
}

@end


@implementation ViewController

- (void)viewDidLoad
{
    //TEST
    [super viewDidLoad];
    saver_on = [self getAVAudioPlayer:@"SaberOn.wav" ];
    [saver_on prepareToPlay];
    saver_swing = [self getAVAudioPlayer:@"Swing02.WAV" ];
    [saver_swing prepareToPlay];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}
- (id)getAVAudioPlayer:(NSString*)soudFileName;
{
    AVAudioPlayer *player=nil;
    NSString *path = [[NSBundle mainBundle] pathForResource:soudFileName ofType:nil];
    NSURL *url = [NSURL fileURLWithPath:path];
    if(url){
        NSError *err = nil;
        player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&err];
    }
    
    return player;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)sound_ON:(id)sender
{
    [saver_on play];
}

-(IBAction)fight_saver:(id)sender
{
     [saver_swing play];
}

@end
