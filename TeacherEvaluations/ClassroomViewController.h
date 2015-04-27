//
//  ClassroomViewController.h
//  TeacherEvaluations
//
//  Created by Charles Bailey on 9/2/14.
//  Copyright (c) 2014 charlesbailey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIDropDownMenu.h"

@interface ClassroomViewController : UIViewController<UIDropDownMenuDelegate>
@property (strong, nonatomic) IBOutlet UITextField *text1;
@property (strong, nonatomic) IBOutlet UITextField *text2;
@property (strong, nonatomic) IBOutlet UITextField *text3;
@property (strong, nonatomic) IBOutlet UITextField *text4;
@property (strong, nonatomic) IBOutlet UITextField *text5;
@property (strong, nonatomic) IBOutlet UITextField *text6;
@property (strong, nonatomic) IBOutlet UITextField *text7;

@property (strong, nonatomic) UIDropDownMenu *pmenu1;
@property (strong, nonatomic) UIDropDownMenu *pmenu2;
@property (strong, nonatomic) UIDropDownMenu *pmenu3;
@property (strong, nonatomic) UIDropDownMenu *pmenu4;
@property (strong, nonatomic) UIDropDownMenu *pmenu5;
@property (strong, nonatomic) UIDropDownMenu *pmenu6;
@property (strong, nonatomic) UIDropDownMenu *pmenu7;

- (IBAction)backClicked:(id)sender;
-(IBAction)saveClassroomData:(id)sender;
-(IBAction)loadClassroomData:(id)sender;

@end
