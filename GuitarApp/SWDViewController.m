//
//  SWDViewController.m
//  GuitarApp
//
//  Created by Mark Evangelista on 5/1/14.
//  Copyright (c) 2014 Shark Web Dev. All rights reserved.
//

#import "SWDViewController.h"

@interface SWDViewController ()

@end

@implementation SWDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIImage *)imageByDrawingCircleOnImage:(UIImage *)image
{
	UIGraphicsBeginImageContext(image.size);
    
	[image drawAtPoint:CGPointZero];
    
	CGContextRef ctx = UIGraphicsGetCurrentContext();
    
	[[UIColor redColor] setStroke];
    
	CGRect circleRect = CGRectMake(0, 0,
                                   image.size.width,
                                   image.size.height);
	circleRect = CGRectInset(circleRect, 5, 5);
    
	CGContextStrokeEllipseInRect(ctx, circleRect);
    
	UIImage *retImage = UIGraphicsGetImageFromCurrentImageContext();
    
	UIGraphicsEndImageContext();
    
	return retImage;
}

@end
