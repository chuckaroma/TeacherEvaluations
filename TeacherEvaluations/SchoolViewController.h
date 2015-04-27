//
//  SchoolViewController.h
//  TeacherEvaluations
//
//  Created by Charles Bailey on 8/15/14.
//  Copyright (c) 2014 charlesbailey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SchoolViewController : UIViewController <UITableViewDataSource>
{
    NSArray *schoolData;
}

@property (nonatomic, retain) NSArray *schoolData;

@end
