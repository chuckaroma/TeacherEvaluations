//
//  MenuViewController.m
//  TeacherEvaluations
//
//  Created by Charles Bailey on 8/16/14.
//  Copyright (c) 2014 charlesbailey. All rights reserved.
//

#import "MenuViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"mainbuilding.jpg"]];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)TeacherMenuClicked:(id)sender {
     [self performSegueWithIdentifier:@"menu" sender:self];
}

- (IBAction)backClicked:(id)sender {
    [self performSegueWithIdentifier:@"loginback" sender:self];
}
@end
