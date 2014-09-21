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
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
        
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"building1.jpg"]];
    
    scoreLabel.text = [NSString stringWithFormat:@"%d",number2];
    scoreLabel.textColor = [UIColor yellowColor];
    score2Label.textColor = [UIColor yellowColor];
    timeLabel.textColor = [UIColor yellowColor];
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


@end
