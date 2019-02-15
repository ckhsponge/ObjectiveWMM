//
//  ObjectiveWMMViewController.m
//  ObjectiveWMM
//
//  Created by Christopher Hobbs on 11/09/2018.
//  Copyright (c) 2018 Christopher Hobbs. All rights reserved.
//

@import ObjectiveWMM;

#import "ObjectiveWMMViewController.h"

@interface ObjectiveWMMViewController ()
@property (strong, nonatomic) IBOutlet UILabel *declinationLabel;

@end

@implementation ObjectiveWMMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    double declination = [ObjectiveWMM declinationForCoordinate:CLLocationCoordinate2DMake(37.7749, -122.4194)];
    _declinationLabel.text = [[NSNumber numberWithDouble:declination] stringValue];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
