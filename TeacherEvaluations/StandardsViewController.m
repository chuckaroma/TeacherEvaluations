//
//  StandardsViewController.m
//  TeacherEvaluations
//
//  Created by Charles Bailey on 8/30/14.
//  Copyright (c) 2014 charlesbailey. All rights reserved.
//

#import "StandardsViewController.h"

@interface StandardsViewController ()

@end

@implementation StandardsViewController


- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"sun.jpg"]];    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)purposeClicked:(id)sender {
    [self performSegueWithIdentifier:@"purpose" sender:self];
}

- (IBAction)engagementClicked:(id)sender {
    [self performSegueWithIdentifier:@"engagement" sender:self];
}

- (IBAction)curriculumClicked:(id)sender {
    [self performSegueWithIdentifier:@"curriculum" sender:self];
}

- (IBAction)assessmentClicked:(id)sender {
    [self performSegueWithIdentifier:@"assessment" sender:self];
}

- (IBAction)classroomClicked:(id)sender {
    [self performSegueWithIdentifier:@"classroom" sender:self];
}

- (IBAction)professionalClicked:(id)sender {
    [self performSegueWithIdentifier:@"professional" sender:self];
}

- (IBAction)studentClicked:(id)sender {
    [self performSegueWithIdentifier:@"learning" sender:self];
}

- (IBAction)Cancelclicked:(id)sender {
     [self dismissViewControllerAnimated:YES completion:nil];
}

@end
