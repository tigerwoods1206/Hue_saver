//
//  ViewController.h
//  Hue_saver
//
//  Created by オオタ イサオ on 2014/03/23.
//  Copyright (c) 2014年 オオタ イサオ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController
{
    AVAudioPlayer *audioPlayer;
}

- (AVAudioPlayer*)getAVAudioPlayer:(NSString*)soudFileName;

-(IBAction)sound_ON:(id)sender;
-(IBAction)fight_saver:(id)sender;

@end
