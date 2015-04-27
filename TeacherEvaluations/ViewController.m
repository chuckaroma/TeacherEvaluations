//
//  ViewController.m
//  TeacherEvaluations
//
//  Created by Charles Bailey on 7/14/14.
//  Copyright (c) 2014 charlesbailey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"space.jpg"]];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    if (![defaults boolForKey:@"registered"]) {
        NSLog(@"No registered user");
        _LoginBtn.hidden = YES;
    }
    else{
        NSLog(@"user is registered");
        _textConfirmPassword.hidden = YES;
        _RegisterBtn.hidden = YES;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)registerClicked:(id)sender {
    if ([_textUsername.text isEqualToString:@""] || [_textPassword.text isEqualToString:@""] || [_textConfirmPassword.text isEqualToString:@""]) {
        
        UIAlertView *error = [[UIAlertView alloc] initWithTitle:@"Error" message:@"You must fill in all fields" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        [error show];
    }
    else {
        [self checkPasswordsMatch];
    }
}

-(void) checkPasswordsMatch {
    if ([_textPassword.text isEqualToString:_textConfirmPassword.text])
    {
        NSLog(@"Passwords Match");
        [self RegisterNewUser];
    }
    else {
        UIAlertView *error = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Passwords do not Match" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        
        [error show];
    }
}

-(void) RegisterNewUser {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:_textUsername.text forKey:@"UserName"];
    [defaults setObject:_textPassword.text forKey:@"Password"];
    [defaults setBool:YES forKey:@"registered"];
    
    [defaults synchronize];
    
    UIAlertView *success = [[UIAlertView alloc] initWithTitle:@"Success" message:@"You have been registered" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    [success show];
    
    [self performSegueWithIdentifier:@"login_success" sender:self];
}
- (IBAction)loginClicked:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    if ([_textUsername.text isEqualToString:[defaults objectForKey:@"UserName"]] && [_textPassword.text isEqualToString:[defaults objectForKey:@"Password"]]) {
        _textUsername.text = nil;
        _textPassword.text = nil;
        [self performSegueWithIdentifier:@"login_success" sender:self];
    }
    else {
        NSLog(@"login credentials incorrect");
        UIAlertView *error = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Your UserName or Password is Incorrect" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [error show];
    }}

@end
