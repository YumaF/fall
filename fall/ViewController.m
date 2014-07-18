//
//  ViewController.m
//  fall
//
//  Created by 古家　佑麻　　　　　　　　 on 2014/06/24.
//  Copyright (c) 2014年 yumafuruya. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    question1 = arc4random_uniform(100);
    question2 = arc4random_uniform(100);
    answer = question1 + question2;
    
    label1.text = [NSString stringWithFormat:@"%d",question1];
    label2.text = [NSString stringWithFormat:@"%d",question2];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:0.05
                                             target:self
                                           selector:@selector(up)
                                           userInfo:nil
                                            repeats:YES
             
             ];
    [timer fire];
    

    pointY = 50;
    label = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2 - 25, pointY, 50, 50)];
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
    label.frame = CGRectMake(self.view.frame.size.width/2
                              - 25, pointY, 50, 50);
    
    if (pointY > 325){
        SecondViewController *SecondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Second"];
        [self presentViewController:SecondViewController animated:YES completion:nil];
    }
}


-(IBAction)botton1{
    number = number*10+1;
    label3.text = [NSString stringWithFormat:@"%d",number];
}

-(IBAction)botton2{
    number = number*10+2;
    label3.text = [NSString stringWithFormat:@"%d",number];
}

-(IBAction)botton3{
    number = number*10+3;
    label3.text = [NSString stringWithFormat:@"%d",number];
}


-(IBAction)botton4{
    number = number*10+4;
    label3.text = [NSString stringWithFormat:@"%d",number];
}

-(IBAction)botton5{
    number = number*10+5;
    label3.text = [NSString stringWithFormat:@"%d",number];
}


-(IBAction)botton6{
    number = number*10+6;
    label3.text = [NSString stringWithFormat:@"%d",number];
}

-(IBAction)botton7{
    number = number*10+7;
    label3.text = [NSString stringWithFormat:@"%d",number];
}


-(IBAction)botton8{
    number = number*10+8;
    label3.text = [NSString stringWithFormat:@"%d",number];
}


-(IBAction)botton9{
    number = number*10+9;
    label3.text = [NSString stringWithFormat:@"%d",number];
}

-(IBAction)botton0{
    number = number*10+0;
    label3.text = [NSString stringWithFormat:@"%d",number];
}

-(IBAction)kaitou{
    
    if(answer == number){
        
        question1 = arc4random_uniform(100);
        question2 = arc4random_uniform(100);
        answer = question1 + question2;
        number = 0;
        pointY = pointY -15;

        label1.text = [NSString stringWithFormat:@"%d",question1];
        label2.text = [NSString stringWithFormat:@"%d",question2];
        label3.text = [NSString stringWithFormat:@"%d",number];
        seikaiLabel.text = [NSString stringWithFormat:@"正解！"];

    }else{
        number = 0;
        label3.text = [NSString stringWithFormat:@"%d",number];
        seikaiLabel.text = [NSString stringWithFormat:@"不正解！"];
        
    }
}


@end
