//
//  LearningViewController.m
//  TeacherEvaluations
//
//  Created by Charles Bailey on 9/2/14.
//  Copyright (c) 2014 charlesbailey. All rights reserved.
//

#import "LearningViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface LearningViewController ()

@end

@implementation LearningViewController

@synthesize text1, text2, pmenu1, pmenu2;


-(IBAction)saveLearningData:(id)sender {
    NSString *savedata1 = text1.text;
    NSString *savedata2 = text2.text;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:savedata1 forKey:@"savedata1"];
    [defaults setObject:savedata2 forKey:@"savedata2"];
    [defaults synchronize];
}

-(IBAction)loadLearningData:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *loaddata1 = [defaults objectForKey:@"savedata1"];
    NSString *loaddata2 = [defaults objectForKey:@"savedata2"];
    [text1 setText:loaddata1];
    [text2 setText:loaddata2];
}

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Neptune.jpg"]];
    [super viewDidLoad];
    
    text1.text = @"Select a Standard";
    text2.enabled = false;
    
    
    pmenu1 = [[UIDropDownMenu alloc] initWithIdentifier:@"pmenu1"];
    pmenu2 = [[UIDropDownMenu alloc] initWithIdentifier:@"pmenu2"];
    
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
