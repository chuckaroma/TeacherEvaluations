//
//  LearningViewController.h
//  TeacherEvaluations
//
//  Created by Charles Bailey on 9/2/14.
//  Copyright (c) 2014 charlesbailey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIDropDownMenu.h"

@interface LearningViewController : UIViewController<UIDropDownMenuDelegate>

@property (strong, nonatomic) IBOutlet UITextField *text1;
@property (strong, nonatomic) IBOutlet UITextField *text2;

- (IBAction)backClicked:(id)sender;

@property (strong, nonatomic) UIDropDownMenu *pmenu1;
@property (strong, nonatomic) UIDropDownMenu *pmenu2;

-(IBAction)saveLearningData:(id)sender;
-(IBAction)loadLearningData:(id)sender;
@end
