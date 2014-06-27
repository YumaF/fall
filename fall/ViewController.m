//
//  ViewController.m
//  fall
//
//  Created by 古家　佑麻　　　　　　　　 on 2014/06/24.
//  Copyright (c) 2014年 yumafuruya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    timer = [NSTimer scheduledTimerWithTimeInterval:0.01
                                             target:self
                                           selector:@selector(up)
                                           userInfo:nil
                                            repeats:YES
             ];
    [timer fire];
    

    pointY = 50;
    
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(145, pointY, 50, 50)];
    label.text = @"■";
    label.font = [UIFont systemFontOfSize:50];
    
    [label setBackgroundColor:[UIColor clearColor]];
    
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)up
{
    pointY ++;
    label.frame = CGRectMake(145, pointY, 50, 50);
    
    if (pointY < 325){
           }

}


@end
