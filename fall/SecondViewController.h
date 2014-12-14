//
//  SecondViewController.h
//  fall
//
//  Created by 古家　佑麻　　　　　　　　 on 2014/06/27.
//  Copyright (c) 2014年 yumafuruya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GADInterstitial.h"

int number2;


@interface SecondViewController : UIViewController <GADInterstitialDelegate> {
    GADInterstitial *interstitial_;


    IBOutlet UILabel *scoreLabel;
    IBOutlet UILabel *timeLabel;
    IBOutlet UILabel *score2Label;
    IBOutlet UILabel *ratingLabel;
    
    int count;
}

-(IBAction)oncemore;
-(IBAction)returntostart;

@end
