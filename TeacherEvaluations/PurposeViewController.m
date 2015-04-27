//
//  PurposeViewController.m
//  TeacherEvaluations
//
//  Created by Charles Bailey on 8/30/14.
//  Copyright (c) 2014 charlesbailey. All rights reserved.
//

#import "PurposeViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface PurposeViewController ()

@end

@implementation PurposeViewController
@synthesize P1, P2, P3, P4, P5, pmenu1, pmenu2, pmenu3, pmenu4, pmenu5;


-(IBAction)savePurposeData:(id)sender {
    NSString *savedata1 = P1.text;
    NSString *savedata2 = P2.text;
    NSString *savedata3 = P3.text;
    NSString *savedata4 = P4.text;
    NSString *savedata5 = P5.text;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:savedata1 forKey:@"savedata1"];
    [defaults setObject:savedata2 forKey:@"savedata2"];
    [defaults setObject:savedata3 forKey:@"savedata3"];
    [defaults setObject:savedata4 forKey:@"savedata4"];
    [defaults setObject:savedata5 forKey:@"savedata5"];
    [defaults synchronize];
}

-(IBAction)loadPurposeData:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *loaddata1 = [defaults objectForKey:@"savedata1"];
    NSString *loaddata2 = [defaults objectForKey:@"savedata2"];
    NSString *loaddata3 = [defaults objectForKey:@"savedata3"];
    NSString *loaddata4 = [defaults objectForKey:@"savedata4"];
    NSString *loaddata5 = [defaults objectForKey:@"savedata5"];
    [P1 setText:loaddata1];
    [P2 setText:loaddata2];
    [P3 setText:loaddata3];
    [P4 setText:loaddata4];
    [P5 setText:loaddata5];
}
- (void)viewDidLoad
{
     self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"mercury.jpg"]];
    [super viewDidLoad];
   
    P1.text = @"Select a Standard";
    P2.enabled = false;
    P3.enabled = false;
    P4.enabled = false;
    P5.enabled = false;
    
    
    pmenu1 = [[UIDropDownMenu alloc] initWithIdentifier:@"pmenu1"];
    pmenu2 = [[UIDropDownMenu alloc] initWithIdentifier:@"pmenu2"];
    pmenu3 = [[UIDropDownMenu alloc] initWithIdentifier:@"pmenu3"];
    pmenu4 = [[UIDropDownMenu alloc] initWithIdentifier:@"pmenu4"];
    pmenu5 = [[UIDropDownMenu alloc] initWithIdentifier:@"pmenu5"];
    
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
    [pmenu1 makeMenu:P1 targetView:self.view];
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
        P1.text = ReturnValue;
        
        P2.enabled = true;
        P2.text = @"Click to select";
        
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
        [pmenu2 makeMenu:P2 targetView:self.view];
        pmenu2.delegate = self;
        
    }
    
    // check to see if the selected menu was textmenu1
    if ([identifier  isEqual: @"pmenu2"]){
        P2.text = ReturnValue;
        
        P3.enabled = true;
        P3.text = @"Click to select";
        
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
        [pmenu3 makeMenu:P3 targetView:self.view];
        pmenu3.delegate = self;
        
    }
    
    if ([identifier  isEqual: @"pmenu3"]){
        P3.text = ReturnValue;
        
        P4.enabled = true;
        P4.text = @"Click to select";
        
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
        [pmenu4 makeMenu:P4 targetView:self.view];
        pmenu4.delegate = self;
    }
    
    if ([identifier  isEqual: @"pmenu4"]){
        P4.text = ReturnValue;
        
        P5.enabled = true;
        P5.text = @"Click to select";
        
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
        [pmenu5 makeMenu:P5 targetView:self.view];
        pmenu5.delegate = self;
    }
    
    if ([identifier  isEqual: @"pmenu5"]) {
        P5.text = ReturnValue;
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
