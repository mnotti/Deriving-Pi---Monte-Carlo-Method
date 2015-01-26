//
//  ViewController.m
//  derivingPi
//
//  Created by Markus Notti on 1/25/15.
//  Copyright (c) 2015 Markus Notti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    self.sampleSizeFromSlider.text = [NSString stringWithFormat:@"%f", self.slider.value];

    
}

-(void) generatePointsX:(float* )xPoint andY:(float* ) yPoint{
    *xPoint = ((float)rand() / RAND_MAX) * 1;
    *yPoint = ((float)rand() / RAND_MAX) * 1;
}

- (void) derivePi{
    float xPoint1 = 0;
    float yPoint1 = 0;
    int inCircleCount = 0;
    int outCircleCount = 0;
    
    
    for (int i = 0; i < self.slider.value; i++)
    {
        [self generatePointsX:&xPoint1 andY:&yPoint1];
        float tempRadiusSquared = (xPoint1*xPoint1) + (yPoint1*yPoint1);
        if (tempRadiusSquared <= 1)
            inCircleCount++;
        else
            outCircleCount++;
        
    }
    float pi = (inCircleCount/((inCircleCount + outCircleCount) * .25));
    
    self.valueOfPi.text = [NSString stringWithFormat:@"%f", pi];

}
- (IBAction)sliderHasBeenSlid:(id)sender {
    self.sampleSizeFromSlider.text = [NSString stringWithFormat:@"%f", self.slider.value];
}

- (IBAction)Calculate:(id)sender {
    self.valueOfPi.text = @"";
    [self derivePi];
}
@end
