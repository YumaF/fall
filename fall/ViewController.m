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
    
    

    NSString *path = [[NSBundle mainBundle] pathForResource:@"game_maoudamashii_1_battle24" ofType:@"mp3"];
    NSURL *url = [NSURL fileURLWithPath:path];
    audio = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    [audio prepareToPlay];
    
    //viewDidLoadでならないときはviewDidApperを使う！
    
    
   

    
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
    
    pointY = -142;
    label = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2 - 25, pointY, 50, 50)];
    //label.text = @"";
    
    //label.font = [UIFont systemFontOfSize:50];
    //label.textColor = [UIColor whiteColor];
    
    // 画像の読み込み
    UIImage *insekiimage = [UIImage imageNamed:@"meteo"];
    
    // UIImageViewの初期化
    //CGRect rect = CGRectMake(0, 0, 250, 250);
    UIImageView *imageView = [[UIImageView alloc]initWithImage:insekiimage];
    imageView.frame=CGRectMake(0, 0, 100, 142);

    

    // UIImageViewのインスタンスをビューに追加
    [label addSubview:imageView];
    
    //[label setBackgroundColor:[UIColor redColor]];
    
    [self.view addSubview:label];
    
    label1.textColor = [UIColor yellowColor];
    label2.textColor = [UIColor yellowColor];
    label3.textColor = [UIColor yellowColor];
    
    //[self.view bringSubviewToFront:label];
    
    label.layer.zPosition = 1;
    [label setNeedsDisplay];
    NSLog(@"%f", label.layer.zPosition);
    NSLog(@"%ld", self.view.subviews.count);
    
//     [self.view sendSubviewToBack:];
}


- (void)viewDidAppear:(BOOL)animated{
    [audio play];
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
    
    if (pointY > 430){
        
        SecondViewController *secondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Second"];
        [self presentViewController:secondViewController animated:YES completion:nil];
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
        pointY = pointY -20;
        label1.text = [NSString stringWithFormat:@"%d",question1];
        label2.text = [NSString stringWithFormat:@"%d",question2];
        label3.text = [NSString stringWithFormat:@"%d",number];
        seikaiLabel.text = [NSString stringWithFormat:@"Right!"];
        seikaiLabel.textColor = [UIColor redColor];
        
        count = count + 1;
        number2 = number2 + 100;
        
        
    }else{
        number = 0;
        label3.text = [NSString stringWithFormat:@"%d",number];
        pointY = pointY +10;
        seikaiLabel.text = [NSString stringWithFormat:@"Wrong!"];
        seikaiLabel.textColor = [UIColor blueColor];
        
        count = count + 1;
        number2 = number2 - 50;
        
    }
}

-(IBAction)sakujo{
    number = 0;
    label3.text = [NSString stringWithFormat:@"%d",number];
}

@end
