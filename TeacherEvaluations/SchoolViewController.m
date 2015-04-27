//
//  SchoolViewController.m
//  TeacherEvaluations
//
//  Created by Charles Bailey on 8/15/14.
//  Copyright (c) 2014 charlesbailey. All rights reserved.
//

#import "SchoolViewController.h"
#import "TeacherViewController.h"
#import "TeacherTableViewController.m"

@interface SchoolViewController ()

@end

@implementation SchoolViewController
@synthesize schoolData;

- (void)viewDidLoad
{
    schoolData = [[NSArray alloc] initWithObjects:@"Evanston High School", @"Horizon JR/Sr High School", @"Davis Middle School", @"Evanston Middle School", @"Aspen Elementary", @"Clark Elementary", @"North Evanston Elementary", @"Uinta Meadows Elementary", nil];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [schoolData count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = nil;
    
    cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    cell.textLabel.text = [schoolData objectAtIndex:indexPath.row];
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"school"]) {
        TeacherViewController *teacherViewController = [segue destinationViewController];
        
        NSIndexPath *myIndexPath = [self.ta]
    }
}


@end
