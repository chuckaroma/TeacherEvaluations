//
//  IntakeViewController.m
//  TeacherEvaluations
//
//  Created by Charles Bailey on 8/17/14.
//  Copyright (c) 2014 charlesbailey. All rights reserved.
//

#import "IntakeViewController.h"

@interface IntakeViewController ()

@end

@implementation IntakeViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"swirlingnebula.jpg"]];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backClicked:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)problemClicked:(id)sender {
    [self performSegueWithIdentifier:@"problem" sender:self];
}

- (IBAction)emailClicked:(id)sender {
    if ([MFMailComposeViewController canSendMail]) {
        MFMailComposeViewController *mailComposer = [[MFMailComposeViewController alloc] init];
        
        mailComposer.mailComposeDelegate = self;
        
        [mailComposer setSubject:@"Review"];
        [mailComposer setToRecipients:@[@"cbailey92@gmail.com"]];
        
        [self presentViewController:mailComposer animated:YES completion:nil];
    }
    else{
        NSLog(@"Can't send Mail!");
    }
}

- (IBAction)saveClicked:(id)sender {
    NSString *saveproblem = _problem.text;
    NSString *savegoal = _goal.text;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:saveproblem forKey:@"saveproblem"];
    [defaults setObject:savegoal forKey:@"savegoal"];
    [defaults synchronize];
}

- (IBAction)loadNotes:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *loadproblem = [defaults objectForKey:@"saveproblem"];
    NSString *loadgoal = [defaults objectForKey:@"savegoal"];
    [_problem setText:loadproblem];
    [_goal setText:loadgoal];
}

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
