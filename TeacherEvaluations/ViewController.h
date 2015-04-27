//
//  ViewController.h
//  TeacherEvaluations
//
//  Created by Charles Bailey on 7/14/14.
//  Copyright (c) 2014 charlesbailey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIButton *LoginBtn;
@property (weak, nonatomic) IBOutlet UIButton *RegisterBtn;
@property (weak, nonatomic) IBOutlet UITextField *textUsername;
@property (weak, nonatomic) IBOutlet UITextField *textPassword;
@property (weak, nonatomic) IBOutlet UITextField *textConfirmPassword;

- (IBAction)registerClicked:(id)sender;
- (IBAction)loginClicked:(id)sender;


@end
