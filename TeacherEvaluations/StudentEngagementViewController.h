//
//  StudentEngagementViewController.h
//  TeacherEvaluations
//
//  Created by Charles Bailey on 8/30/14.
//  Copyright (c) 2014 charlesbailey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIDropDownMenu.h"

@interface StudentEngagementViewController : UIViewController<UIDropDownMenuDelegate>

@property (strong, nonatomic) IBOutlet UITextField *text1;
@property (strong, nonatomic) IBOutlet UITextField *text2;
@property (strong, nonatomic) IBOutlet UITextField *text3;
@property (strong, nonatomic) IBOutlet UITextField *text4;
@property (strong, nonatomic) IBOutlet UITextField *text5;
@property (strong, nonatomic) IBOutlet UITextField *text6;

@property (strong, nonatomic) UIDropDownMenu *pmenu1;
@property (strong, nonatomic) UIDropDownMenu *pmenu2;
@property (strong, nonatomic) UIDropDownMenu *pmenu3;
@property (strong, nonatomic) UIDropDownMenu *pmenu4;
@property (strong, nonatomic) UIDropDownMenu *pmenu5;
@property (strong, nonatomic) UIDropDownMenu *pmenu6;

- (IBAction)doneClicked:(id)sender;
-(IBAction)saveEngagementData:(id)sender;
-(IBAction)loadEngagementData:(id)sender;

@end
