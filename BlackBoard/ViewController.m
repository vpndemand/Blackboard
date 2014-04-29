//
//  ViewController.m
//  BlackBoard
//
//  Created by SathishKumar on 17/04/14.
//  Copyright (c) 2014 SathishKumar. All rights reserved.
//

#import "ViewController.h"
struct pixel {
    unsigned char r, g, b, a;
};
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
   // self.view.backgroundColor = [UIColor lightGrayColor];
    
//    UIImage *image = [UIImage imageNamed:@"red.jpeg"];
// dominantColor = [self getDominantColor:image];
    drawView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 1024, 668)];
    //drawView.backgroundColor=[UIColor lightGrayColor];
    [self.view addSubview:drawView];
    
    buttonenable=YES;
    drawImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 1024, 668)];
    drawImage.image=[UIImage imageNamed:@"blackboard.png"];
    [drawView addSubview:drawImage];
    

   
    
    greenImage = [[UIImageView alloc]initWithFrame:CGRectMake(50, 700, 50, 50)];
    greenImage.image=[UIImage imageNamed:@"green.jpeg"];
    greenImage.userInteractionEnabled=YES;
    [self.view addSubview:greenImage];
    
    
    redImage = [[UIImageView alloc]initWithFrame:CGRectMake(150, 700, 50, 50)];
    redImage.image=[UIImage imageNamed:@"red.jpeg"];
     redImage.userInteractionEnabled=YES;
    [self.view addSubview:redImage];
    
    blueImage = [[UIImageView alloc]initWithFrame:CGRectMake(250, 700, 50, 50)];
    blueImage.image=[UIImage imageNamed:@"blue.jpeg"];
      blueImage.userInteractionEnabled=YES;
    [self.view addSubview:blueImage];
    
    yellowImage = [[UIImageView alloc]initWithFrame:CGRectMake(350, 700, 50, 50)];
    yellowImage.image=[UIImage imageNamed:@"yellow.jpeg"];
    yellowImage.userInteractionEnabled=YES;
    [self.view addSubview:yellowImage];
    
    voiletImage = [[UIImageView alloc]initWithFrame:CGRectMake(450, 700, 50, 50)];
    voiletImage.image=[UIImage imageNamed:@"voilet.jpeg"];
    voiletImage.userInteractionEnabled=YES;
    [self.view addSubview:voiletImage];
    
    brownImage = [[UIImageView alloc]initWithFrame:CGRectMake(550, 700, 50, 50)];
    brownImage.image=[UIImage imageNamed:@"brown.jpeg"];
    brownImage.userInteractionEnabled=YES;
    [self.view addSubview:brownImage];
    
    whiteImage = [[UIImageView alloc]initWithFrame:CGRectMake(650, 700, 50, 50)];
    whiteImage.image=[UIImage imageNamed:@"white.jpeg"];
    whiteImage.userInteractionEnabled=YES;
    [self.view addSubview:whiteImage];
    
    eraseImage = [[UIImageView alloc]initWithFrame:CGRectMake(750, 700, 50, 50)];
    eraseImage.image=[UIImage imageNamed:@"erase.jpeg"];
    eraseImage.userInteractionEnabled=YES;
    [self.view addSubview:eraseImage];
    
    girdView = [[UIImageView alloc]initWithFrame:CGRectMake(850, 700, 50, 50)];
    girdView.image=[UIImage imageNamed:@"grid.jpeg"];
    girdView.userInteractionEnabled=YES;
    
    [self.view addSubview:girdView];
  
   //panRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self
                                                                                     //action:@selector(handlePanGesture:)];
    //panRecognizer.delegate=self;
    //[eraseImage addGestureRecognizer:panRecognizer];
    
    //save=[[UIButton alloc]initWithFrame:CGRectMake(950, 50, 50, 50)];
    save = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [save addTarget:self
               action:@selector(savephoto)
     forControlEvents:UIControlEventTouchUpInside];
    [save setTitle:@"Save" forState:UIControlStateNormal];
    save.frame = CGRectMake(950, 690, 70, 50);
    [self.view addSubview:save];
    
      mouseMoved = 0;
   
}
//- (void)handlePanGesture:(UIPanGestureRecognizer *)gestureRecognizer
//{
//    
//      NSLog(@"gestureRecognizergestureRecognizergestureRecognizergestureRecognizer");
//    CGRect frame = eraseImage.frame;
//    frame.origin = [gestureRecognizer locationInView:eraseImage.superview];
//    eraseImage.frame = frame;
//}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    mouseSwiped = NO;
    UITouch *touch = [touches anyObject];
    
    if ([touch tapCount] == 2
        ) {
        return;
    }
    
    lastPoint = [touch locationInView:drawView];
    lastPoint.y -= 2;
    
    if (touch.view == greenImage)
    {
        
        red=0.0;
        green=0.7764;
        blue=0.050;
        clearcolor=1.0;
        NSLog(@"greenImage");
       
    }
    if (touch.view == redImage)
    {
        NSLog(@"redImage");
        red=1.0;
        green=0.0;
        blue=0.0;
         clearcolor=1.0;
//        255
//        0
//        0
        
    }
    if (touch.view == blueImage)
    {
        NSLog(@"blueImage");
        red=0.0;
        green=0.3058;
        blue=0.9960;
         clearcolor=1.0;
//        0
//        78
//        254
    }

    if (touch.view == eraseImage)
    {
        //IsErase=YES;
        red=0.0;
        green=0.0;
        blue=0.0;
        clearcolor=1.0;
          NSLog(@"eraseImage");
           }
    if (touch.view ==girdView )
    {

        if (buttonenable==YES) {
            tableview=[[UITableView alloc]initWithFrame:CGRectMake(25, 21, 980, 630)];
            tableview.backgroundColor=[UIColor clearColor];
            [drawImage addSubview:tableview];
         
            NSLog(@"YES");
            buttonenable=NO;
        }
        else{
            [tableview removeFromSuperview];
                buttonenable=YES;
             NSLog(@"no");
        }
        
     //    CGPoint touchLocation = [touch locationInView:self.view];
//    if (CGRectContainsPoint(drawView.frame, touchLocation)) {
//       
//        
    }
    if (touch.view == voiletImage)
    {
        //IsErase=YES;
        red=0.5921;
        green=0.2392;
        blue=0.8313;
        clearcolor=1.0;
        NSLog(@"voiletImage");
    }
    if (touch.view == brownImage)
    {
        //IsErase=YES;
        red=0.3647;
        green=0.2745;
        blue=0.24313;
        clearcolor=1.0;
        NSLog(@"brownImage");
    }
    if (touch.view == yellowImage)
    {
        //IsErase=YES;
        red=1;
        green=0.9647;
        blue=0.0;
        clearcolor=1.0;
        NSLog(@"yellowImage");
    }
    if (touch.view == whiteImage)
    {
        //IsErase=YES;
        red=1;
        green=1;
        blue=1;
        clearcolor=1.0;
        NSLog(@"whiteImage");
    }

}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    mouseSwiped = YES;
    
    //    if (IsErase) {
    //          CGContextSetBlendMode(UIGraphicsGetCurrentContext(), kCGBlendModeClear);
    //         NSLog(@"eraseImage");
    //    }
    UITouch *touch = [touches anyObject];
    CGPoint currentPoint = [touch locationInView:self.view];
    currentPoint.y -= 2;
    
   
//    if([touch view] == eraseImage)
//    {
//        CGRect frame = drawImage.frame;
//        frame.origin = [touch locationInView:eraseImage.superview];
//        eraseImage.frame = frame;
//   }
    UIGraphicsBeginImageContext(drawView.frame.size);
    [drawImage.image drawInRect:CGRectMake(0,0,drawImage.frame.size.width,drawImage.frame.size.height)];
    CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound);
    CGContextSetLineWidth(UIGraphicsGetCurrentContext(), 15.0);

    CGContextSetRGBStrokeColor(UIGraphicsGetCurrentContext(),red,green,blue,  clearcolor);
    CGContextBeginPath(UIGraphicsGetCurrentContext());
  
    CGContextMoveToPoint(UIGraphicsGetCurrentContext(), lastPoint.x, lastPoint.y);
    CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), currentPoint.x, currentPoint.y);
    CGContextStrokePath(UIGraphicsGetCurrentContext());
    drawImage.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    lastPoint = currentPoint;

}


- (void)savephoto {
    
	UIGraphicsBeginImageContext(drawView.frame.size);
	[self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
	UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	UIImageWriteToSavedPhotosAlbum(viewImage, self, nil, nil);
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [touches anyObject];
    
    if ([touch tapCount] == 2) {
        return;
    }
   
 
//    if([touch view] == eraseImage)
//    {
//        [drawView addSubview:eraseImage];
//    }
    if(!mouseSwiped) {
       
        UIGraphicsBeginImageContext(drawView.frame.size);
        [drawImage.image drawInRect:CGRectMake(0,0,drawImage.frame.size.width,drawImage.frame.size.height)];
//        if([touch view] == eraseImage)
//        {
//            CGRect frame = drawImage.frame;
//            frame.origin = [touch locationInView:eraseImage.superview];
//            eraseImage.frame = frame;
//        }
        CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound);
        CGContextSetLineWidth(UIGraphicsGetCurrentContext(), 5.0);
       CGContextSetRGBStrokeColor(UIGraphicsGetCurrentContext(),red,green,blue, clearcolor);
       // CGContextSetBlendMode(UIGraphicsGetCurrentContext(), kCGBlendModeClear);
        CGContextMoveToPoint(UIGraphicsGetCurrentContext(), lastPoint.x, lastPoint.y);
        CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), lastPoint.x, lastPoint.y);
        CGContextStrokePath(UIGraphicsGetCurrentContext());
        CGContextFlush(UIGraphicsGetCurrentContext());
        drawImage.image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
