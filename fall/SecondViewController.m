//
//  SecondViewController.m
//  fall
//
//  Created by 古家　佑麻　　　　　　　　 on 2014/06/27.
//  Copyright (c) 2014年 yumafuruya. All rights reserved.
//
#import "SecondViewController.h"
#import "ViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
#pragma mark -

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //[self dismissViewControllerAnimated:YES completion:nil];
    
    [self loadAdMobIntersBanner];
    
    scoreLabel.text = [NSString stringWithFormat:@"%d",number2];
    scoreLabel.textColor = [UIColor yellowColor];
    score2Label.textColor = [UIColor yellowColor];
    timeLabel.textColor = [UIColor redColor];
    
    if(number2 <= -1300){
        ratingLabel.text = [NSString stringWithFormat:@"Z"];
    }else if (-1300 < number2 && number2 <= -1100){
        ratingLabel.text = [NSString stringWithFormat:@"G-"];
    }else if (-1100 < number2 && number2 <= -900){
        ratingLabel.text = [NSString stringWithFormat:@"G+"];
    }else if (-900 < number2 && number2  <= -700){
        ratingLabel.text = [NSString stringWithFormat:@"F-"];
    }else if (-700 < number2 && number2  <= -500){
        ratingLabel.text = [NSString stringWithFormat:@"F+"];
    }else if (-500 < number2 && number2 <= -300){
        ratingLabel.text = [NSString stringWithFormat:@"E-"];
    }else if (-300 < number2 && number2 <= -100){
        ratingLabel.text = [NSString stringWithFormat:@"E+"];
    }else if (-100 < number2 && number2 <= 100 ){
        ratingLabel.text = [NSString stringWithFormat:@"D-"];
    }else if (100 < number2 && number2 <= 300){
        ratingLabel.text = [NSString stringWithFormat:@"D+"];
    }else if (300 < number2 && number2 <= 500){
        ratingLabel.text = [NSString stringWithFormat:@"C-"];
    }else if (500 < number2 && number2 <= 700){
        ratingLabel.text = [NSString stringWithFormat:@"C+"];
    }else if (700 < number2 && number2 <= 900){
        ratingLabel.text = [NSString stringWithFormat:@"B-"];
    }else if (900 < number2 && number2 <= 1100){
        ratingLabel.text = [NSString stringWithFormat:@"B+"];
    }else if (1100 < number2 && number2 <= 1300){
        ratingLabel.text = [NSString stringWithFormat:@"A-"];
    }else if (1300 < number2 && number2 <= 1500){
        ratingLabel.text = [NSString stringWithFormat:@"A+"];
    }else if (1500 < number2){
        ratingLabel.text = [NSString stringWithFormat:@"S"];
    }
    
    NSLog(@"%d",number2);
}
#pragma mark - AdMob Inters Banner
- (void)loadAdMobIntersBanner
{
    interstitial_ = [[GADInterstitial alloc] init];
    interstitial_.adUnitID = @"ca-app-pub-6952021679773345/8750799716";
    interstitial_.delegate = self;
    GADRequest *request = [GADRequest request];
    [interstitial_ loadRequest:request];
}

// AdMobのインタースティシャル広告表示
- (void)interstitialDidReceiveAd:(GADInterstitial *)ad
{
    [interstitial_ presentFromRootViewController:self];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(IBAction)oncemore{
    number2 = 0;
    scoreLabel.text = [NSString stringWithFormat:@"%d",number2];
}

-(IBAction)returntostart{
    number2 = 0;
    scoreLabel.text = [NSString stringWithFormat:@"%d",number2]; 
}



@end
