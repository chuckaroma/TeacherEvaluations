//
//  MenuViewController.h
//  TeacherEvaluations
//
//  Created by Charles Bailey on 8/16/14.
//  Copyright (c) 2014 charlesbailey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuViewController : UIViewController

@property(nonatomic, strong) NSArray *TeacherModal;


- (IBAction)TeacherMenuClicked:(id)sender;
- (IBAction)backClicked:(id)sender;

@end
