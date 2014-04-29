//
//  ViewController.h
//  BlackBoard
//
//  Created by SathishKumar on 17/04/14.
//  Copyright (c) 2014 SathishKumar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIGestureRecognizerDelegate>
{
      CGPoint lastPoint;
    BOOL mouseSwiped;
      BOOL IsErase;
	int mouseMoved;
    BOOL buttonenable;
    UIImageView *drawImage;
    
     UIImageView *greenImage;
     UIImageView *redImage;
     UIImageView *blueImage;
     UIImageView *voiletImage;
     UIImageView *brownImage;
     UIImageView *whiteImage;
     UIImageView *yellowImage;
    UIImageView *eraseImage;
    UIPanGestureRecognizer * panRecognizer;
    UIImageView *girdView;
    UIView *girddraw;
    UIButton *save;

    
    UIView *drawView;
    UIImage *colorred;
    
    
    CGFloat green;
    CGFloat red;
    CGFloat blue;
    CGFloat clearcolor;
    CGFloat brushSize;
    
    UITableView *tableview;
    

}

@end
