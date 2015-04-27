//
//  FormativeViewController.m
//  TeacherEvaluations
//
//  Created by Charles Bailey on 8/17/14.
//  Copyright (c) 2014 charlesbailey. All rights reserved.
//

#import "FormativeViewController.h"

@interface FormativeViewController ()

@end

@implementation FormativeViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"flamenebula.jpg"]];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveNotes:(id)sender {
    NSString *savenotes = _notes.text;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:savenotes forKey:@"savenotes"];
    [defaults synchronize];
}

- (IBAction)loadNotes:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *loadnotes = [defaults objectForKey:@"savenotes"];
    [_notes setText:loadnotes];
}

- (IBAction)backClicked:(id)sender {
     [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)standardClicked:(id)sender {
    [self performSegueWithIdentifier:@"formative" sender:self];}

- (IBAction)sendEmail:(id)sender {
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

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
