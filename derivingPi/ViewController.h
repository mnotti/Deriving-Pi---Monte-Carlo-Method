//
//  ViewController.h
//  derivingPi
//
//  Created by Markus Notti on 1/25/15.
//  Copyright (c) 2015 Markus Notti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *sampleSizeFromSlider;

@property (weak, nonatomic) IBOutlet UITextField *valueOfPi;
- (IBAction)Calculate:(id)sender;
@property (strong, nonatomic) NSString* piString;

@end

