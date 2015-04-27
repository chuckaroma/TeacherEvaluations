//
//  EvaluationViewController.m
//  TeacherEvaluations
//
//  Created by Charles Bailey on 8/17/14.
//  Copyright (c) 2014 charlesbailey. All rights reserved.
//

#import "EvaluationViewController.h"
#import "IntakeViewController.h"
#import "FormativeViewController.h"
#import "LessonViewController.h"
#import "SummativeViewController.h"
#import "SummaryViewController.h"

@interface EvaluationViewController ()

@end

@implementation EvaluationViewController


- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"logo.png"]];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)intakeClicked:(id)sender {
    [self performSegueWithIdentifier:@"intake" sender:self];
}

- (IBAction)formativeClicked:(id)sender {
    [self performSegueWithIdentifier:@"formative" sender:self];
}

- (IBAction)lessonClicked:(id)sender {
    [self performSegueWithIdentifier:@"lesson" sender:self];
}

- (IBAction)summativeClicked:(id)sender {
    [self performSegueWithIdentifier:@"summative" sender:self];
}

- (IBAction)summaryClicked:(id)sender {
    [self performSegueWithIdentifier:@"summary" sender:self];
}

@end
