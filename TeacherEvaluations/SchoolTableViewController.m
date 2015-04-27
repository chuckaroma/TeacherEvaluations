//
//  SchoolTableViewController.m
//  TeacherEvaluations
//
//  Created by Charles Bailey on 8/16/14.
//  Copyright (c) 2014 charlesbailey. All rights reserved.
//

#import "SchoolTableViewController.h"
#import "SchoolTableCell.h"
#import "MenuViewController.h"

@interface SchoolTableViewController ()

@end

@implementation SchoolTableViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _schools = @[@"Evanston High School", @"Horizon Jr/Sr High School", @"Davis Middle School", @"Evanston Middle School", @"Aspen Elementary", @"Clark Elementary", @"North Evanston Elementary", @"Uinta Meadows Elementary"];
    
    _images = @[@"SmallEHS12.jpg", @"small_1_HHS_Front.jpg", @"SmallDMS11.jpg", @"SmallEMS11.jpg", @"SmallAspen11.jpg", @"SmallClark1a1.jpg", @"SmallNorth11.jpg", @"SmallUME11.jpg"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _schools.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    SchoolTableCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    int row = [indexPath row];
    
    cell.schoolLabel.text = _schools[row];
    cell.schoolImage.image = [UIImage imageNamed:_images[row]];
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"school"]) {
        MenuViewController *teacherviewcontroller = [segue destinationViewController];
        
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        
        int row = [myIndexPath row];
        teacherviewcontroller.TeacherModal = @[_schools[row], _images[row]];
    }
}



@end
