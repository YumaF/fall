//
//  ViewController.h
//  fall
//
//  Created by 古家　佑麻　　　　　　　　 on 2014/06/24.
//  Copyright (c) 2014年 yumafuruya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //落ちてくるラベル
    float speed;
    UILabel *label;
    
    float time;
    NSTimer *timer;
    
    //座標
    float pointY;
    
    IBOutlet UILabel *label1;   //問題1
    IBOutlet UILabel *label2;   //問題2
    IBOutlet UILabel *label3;   //回答
    IBOutlet UILabel *seikaiLabel;
    
    int number;
    
    int question1;
    int question2;
    int answer;
}

-(void)up;

-(IBAction)botton1;

-(IBAction)botton2;

-(IBAction)botton3;

-(IBAction)botton4;

-(IBAction)botton5;

-(IBAction)botton6;

-(IBAction)botton7;

-(IBAction)botton8;

-(IBAction)botton9;

-(IBAction)botton0;

-(IBAction)kaitou;

@end
