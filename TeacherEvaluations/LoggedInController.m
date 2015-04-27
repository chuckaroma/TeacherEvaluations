//
//  LoggedInController.m
//  TeacherEvaluations
//
//  Created by Charles Bailey on 8/6/14.
//  Copyright (c) 2014 charlesbailey. All rights reserved.
//

#import "LoggedInController.h"

@interface LoggedInController ()

@end

@implementation LoggedInController


- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Logo.png"]];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)LogoutClicked:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)TeacherClicked:(id)sender {
    [self performSegueWithIdentifier:@"teacher" sender:self];
}
@end
