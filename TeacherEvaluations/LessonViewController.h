//
//  LessonViewController.h
//  TeacherEvaluations
//
//  Created by Charles Bailey on 8/17/14.
//  Copyright (c) 2014 charlesbailey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface LessonViewController : UIViewController <MFMailComposeViewControllerDelegate>
@property (strong, nonatomic) IBOutlet UITextField *lesson;
- (IBAction)saveNotes:(id)sender;

- (IBAction)loadNotes:(id)sender;

- (IBAction)backClicked:(id)sender;

- (IBAction)standardsClicked:(id)sender;

- (IBAction)emailClicked:(id)sender;
@end
