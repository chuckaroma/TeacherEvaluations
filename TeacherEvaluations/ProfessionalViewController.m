//
//  ProfessionalViewController.m
//  TeacherEvaluations
//
//  Created by Charles Bailey on 9/2/14.
//  Copyright (c) 2014 charlesbailey. All rights reserved.
//

#import "ProfessionalViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ProfessionalViewController ()

@end

@implementation ProfessionalViewController


@synthesize text1, text2, text3, text4, text5, text6, pmenu1, pmenu2, pmenu3, pmenu4, pmenu5, pmenu6;


-(IBAction)saveProfessionalData:(id)sender {
    NSString *savedata1 = text1.text;
    NSString *savedata2 = text2.text;
    NSString *savedata3 = text3.text;
    NSString *savedata4 = text4.text;
    NSString *savedata5 = text5.text;
    NSString *savedata6 = text6.text;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:savedata1 forKey:@"savedata1"];
    [defaults setObject:savedata2 forKey:@"savedata2"];
    [defaults setObject:savedata3 forKey:@"savedata3"];
    [defaults setObject:savedata4 forKey:@"savedata4"];
    [defaults setObject:savedata5 forKey:@"savedata5"];
    [defaults setObject:savedata6 forKey:@"savedata6"];
    [defaults synchronize];
}

-(IBAction)loadProfessionalData:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *loaddata1 = [defaults objectForKey:@"savedata1"];
    NSString *loaddata2 = [defaults objectForKey:@"savedata2"];
    NSString *loaddata3 = [defaults objectForKey:@"savedata3"];
    NSString *loaddata4 = [defaults objectForKey:@"savedata4"];
    NSString *loaddata5 = [defaults objectForKey:@"savedata5"];
    NSString *loaddata6 = [defaults objectForKey:@"savedata6"];
    [text1 setText:loaddata1];
    [text2 setText:loaddata2];
    [text3 setText:loaddata3];
    [text4 setText:loaddata4];
    [text5 setText:loaddata5];
    [text6 setText:loaddata6];
}

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"uranus.jpg"]];
    [super viewDidLoad];
    
    text1.text = @"Select a Standard";
    text2.enabled = false;
    text3.enabled = false;
    text4.enabled = false;
    text5.enabled = false;
    text6.enabled = false;
    
    
    pmenu1 = [[UIDropDownMenu alloc] initWithIdentifier:@"pmenu1"];
    pmenu2 = [[UIDropDownMenu alloc] initWithIdentifier:@"pmenu2"];
    pmenu3 = [[UIDropDownMenu alloc] initWithIdentifier:@"pmenu3"];
    pmenu4 = [[UIDropDownMenu alloc] initWithIdentifier:@"pmenu4"];
    pmenu5 = [[UIDropDownMenu alloc] initWithIdentifier:@"pmenu5"];
    pmenu6 = [[UIDropDownMenu alloc] initWithIdentifier:@"pmenu6"];
    
    NSMutableArray *standards = [[NSMutableArray alloc] initWithObjects:
                                 @"N/A",
                                 @"P1 Entry",
                                 @"P2 Emerging",
                                 @"P3 Proficient",
                                 @"P4 Distinguished",
                                 nil];
    
    pmenu1.ScaleToFitParent = TRUE;
    pmenu1.titleArray = standards;
    pmenu1.valueArray = standards;
    pmenu1.rowHeight = 50;
    [pmenu1 makeMenu:text1 targetView:self.view];
    pmenu1.delegate = self;
}

- (void) DropDownMenuDidChange:(NSString *)identifier :(NSString *)ReturnValue{
    /*
     --- DropDownMenuDidChange will be triggered by the Drop Down Menu when an item has been selected. Ensure that <UIDropDownMenuDelegate> is included in the header file.
     --- (NSString *)identifier returns the value specified with initWithIdentifier.
     --- (NSString *)ReturnValue returns the selected item from the valueArray.
     */
    
    // check to see if the selected menu was textmenu1
    if ([identifier  isEqual: @"pmenu1"]){
        text1.text = ReturnValue;
        
        text2.enabled = true;
        text2.text = @"Click to select";
        
        // example 3: add a new menu to textfield2 and change the styling colors for the drop down menu
        
        NSMutableArray *standards2 = [[NSMutableArray alloc] initWithObjects:
                                      @"N/A",
                                      @"P1 Entry",
                                      @"P2 Emerging",
                                      @"P3 Proficient",
                                      @"P4 Distinguished",
                                      nil];
        
        pmenu2.ScaleToFitParent = TRUE;
        pmenu2.titleArray = standards2;
        pmenu2.valueArray = standards2;
        pmenu2.rowHeight = 50;
        [pmenu2 makeMenu:text2 targetView:self.view];
        pmenu2.delegate = self;
        
    }
    
    // check to see if the selected menu was textmenu1
    if ([identifier  isEqual: @"pmenu2"]){
        text2.text = ReturnValue;
        
        text3.enabled = true;
        text3.text = @"Click to select";
        
        // example 3: add a new menu to textfield2 and change the styling colors for the drop down menu
        
        NSMutableArray *standards3 = [[NSMutableArray alloc] initWithObjects:
                                      @"N/A",
                                      @"P1 Entry",
                                      @"P2 Emerging",
                                      @"P3 Proficient",
                                      @"P4 Distinguished",
                                      nil];
        
        pmenu3.ScaleToFitParent = TRUE;
        pmenu3.titleArray = standards3;
        pmenu3.valueArray = standards3;
        pmenu3.rowHeight = 50;
        [pmenu3 makeMenu:text3 targetView:self.view];
        pmenu3.delegate = self;
        
    }
    
    if ([identifier  isEqual: @"pmenu3"]){
        text3.text = ReturnValue;
        
        text4.enabled = true;
        text4.text = @"Click to select";
        
        NSMutableArray *standards4 = [[NSMutableArray alloc] initWithObjects:
                                      @"N/A",
                                      @"P1 Entry",
                                      @"P2 Emerging",
                                      @"P3 Proficient",
                                      @"P4 Distinguished",
                                      nil];
        
        pmenu4.ScaleToFitParent = TRUE;
        pmenu4.titleArray = standards4;
        pmenu4.valueArray = standards4;
        pmenu4.rowHeight = 50;
        [pmenu4 makeMenu:text4 targetView:self.view];
        pmenu4.delegate = self;
    }
    
    if ([identifier  isEqual: @"pmenu4"]){
        text4.text = ReturnValue;
        
        text5.enabled = true;
        text5.text = @"Click to select";
        
        NSMutableArray *standards5 = [[NSMutableArray alloc] initWithObjects:
                                      @"N/A",
                                      @"P1 Entry",
                                      @"P2 Emerging",
                                      @"P3 Proficient",
                                      @"P4 Distinguished",
                                      nil];
        
        pmenu5.ScaleToFitParent = TRUE;
        pmenu5.titleArray = standards5;
        pmenu5.valueArray = standards5;
        pmenu5.rowHeight = 50;
        [pmenu5 makeMenu:text5 targetView:self.view];
        pmenu5.delegate = self;
    }
    
    if ([identifier  isEqual: @"pmenu5"]) {
        text5.text = ReturnValue;
        
        text6.enabled = true;
        text6.text = @"Click to select";
        
        NSMutableArray *standards6 = [[NSMutableArray alloc] initWithObjects:
                                      @"N/A",
                                      @"P1 Entry",
                                      @"P2 Emerging",
                                      @"P3 Proficient",
                                      @"P4 Distinguished",
                                      nil];
        
        pmenu6.ScaleToFitParent = TRUE;
        pmenu6.titleArray = standards6;
        pmenu6.valueArray = standards6;
        pmenu6.rowHeight = 50;
        [pmenu6 makeMenu:text6 targetView:self.view];
        pmenu6.delegate = self;
    }
    
    if ([identifier isEqual: @"pmenu6"]) {
        text6.text = ReturnValue;
    }
}


- (void)viewDidUnload
{
    
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

- (IBAction)backClicked:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
