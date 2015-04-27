//
//  IntakeViewController.h
//  TeacherEvaluations
//
//  Created by Charles Bailey on 8/17/14.
//  Copyright (c) 2014 charlesbailey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface IntakeViewController : UIViewController <MFMailComposeViewControllerDelegate>{
    
}

@property (strong, nonatomic) IBOutlet UITextField *problem;
@property (strong, nonatomic) IBOutlet UITextField *goal;
    

- (IBAction)backClicked:(id)sender;

- (IBAction)problemClicked:(id)sender;

- (IBAction)emailClicked:(id)sender;
- (IBAction)saveClicked:(id)sender;

- (IBAction)loadNotes:(id)sender;

@end
