//
//  PurposeViewController.h
//  TeacherEvaluations
//
//  Created by Charles Bailey on 8/30/14.
//  Copyright (c) 2014 charlesbailey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIDropDownMenu.h"

@interface PurposeViewController : UIViewController<UIDropDownMenuDelegate>

@property (strong, nonatomic) IBOutlet UITextField *P1;

@property (strong, nonatomic) IBOutlet UITextField *P2;

@property (strong, nonatomic) IBOutlet UITextField *P3;

@property (strong, nonatomic) IBOutlet UITextField *P4;

@property (strong, nonatomic) IBOutlet UITextField *P5;

@property (strong, nonatomic) UIDropDownMenu *pmenu1;
@property (strong, nonatomic) UIDropDownMenu *pmenu2;
@property (strong, nonatomic) UIDropDownMenu *pmenu3;
@property (strong, nonatomic) UIDropDownMenu *pmenu4;
@property (strong, nonatomic) UIDropDownMenu *pmenu5;
- (IBAction)backClicked:(id)sender;
-(IBAction)savePurposeData:(id)sender;
-(IBAction)loadPurposeData:(id)sender;

@end
