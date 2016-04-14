//
//  ViewController.m
//  iReview
//
//  Created by Andrew Conrad on 4/13/16.
//  Copyright © 2016 AndrewConrad. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UITextField            *nameTextField;
@property (nonatomic, weak) IBOutlet UITextView             *reviewTextView;
@property (nonatomic, weak) IBOutlet UILabel                *restaurantLabel;
@property (nonatomic, weak) IBOutlet UISegmentedControl     *serviceSegControl;
@property (nonatomic, weak) IBOutlet UIStepper              *foodStepper;
@property (nonatomic, weak) IBOutlet UISlider               *ratingSlider;
@property (nonatomic, weak) IBOutlet UISwitch               *recommendSwitch;
@property (nonatomic, weak) IBOutlet UIButton               *submitButton;
@property (nonatomic, weak) IBOutlet UILabel                *overallLabel;
@property (nonatomic, weak) IBOutlet UILabel                *foodLabel;

@end

@implementation ViewController

//int sliderValue = 0;
//int stepperValue = 5;
//int serviceValue = 0;
long segmentValue = 3;

- (IBAction)sliderChanged:(UISlider *)sender {
//    NSLog(@"Slider Value: %f",sender.value);
    _overallLabel.text = [NSString stringWithFormat:@"%.0f",sender.value];
    
}

- (IBAction)stepperChanged:(UIStepper *)sender {
//    NSLog(@"Stepper Value: %f",sender.value);
    _foodLabel.text = [NSString stringWithFormat:@"%.0f",sender.value];

}

- (IBAction)segmenterChanged:(UISegmentedControl *)sender {
//    NSLog(@"SegmentedBarValue: %li",(long)sender.selectedSegmentIndex);
    segmentValue = sender.selectedSegmentIndex + 1;
}

- (IBAction)switchChanged:(UISwitch *)sender {
//    if (sender.isOn) {
//        NSLog(@"Recomended!");
//    }
//    else {
//        NSLog(@"Not Recomended!");
//    }
//    
    
}

- (IBAction)buttonPressed:(UIButton *)sender {
    NSString *recString = @"";
    if (_recommendSwitch.isOn) {
       recString = @"Customer has recomended.";
    }
    else {
        recString = @"Customer has not recomended.";
    }

    NSLog(@"Submitted! Service Rating is %li. Food Rating is %@. Overall Rating is %@. Customer Name is: %@. Customer Comments are: %@ %@",segmentValue,_foodLabel.text,_overallLabel.text,_nameTextField.text,_reviewTextView.text,recString);
//    NSLog(@"Service Rating is %li",segmentValue);
//    NSLog(@"Food Rating is %@",_foodLabel.text);
//    NSLog(@"Overall Rating is %@",_overallLabel.text);
//    NSLog(@"Customer Name is: %@",_nameTextField.text);
//    NSLog(@"Customer Comments are: %@",_reviewTextView.text);
//    
//    
    
    
    
}


# pragma mark - Submission Functions

- (void)viewDidLoad {
    [super viewDidLoad];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
