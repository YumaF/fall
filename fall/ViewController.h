//
//  ViewController.h
//  fall
//
//  Created by 古家　佑麻　　　　　　　　 on 2014/06/24.
//  Copyright (c) 2014年 yumafuruya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController
{
    float speed;
    UILabel *label;
    
    float time;
    NSTimer *timer;
    
    //座標
    float pointY;
}

-(void)up;

@end
