//
//  TeacherViewController.m
//  TeacherEvaluations
//
//  Created by Charles Bailey on 8/16/14.
//  Copyright (c) 2014 charlesbailey. All rights reserved.
//

#import "TeacherViewController.h"
#import "AddViewController.h"
#import "EvaluationViewController.h"

@interface TeacherViewController ()

@end

@implementation TeacherViewController
@synthesize teacherdata;


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    teacherdata = [[NSMutableArray alloc]initWithObjects:@"New Teacher", nil];
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [teacherdata count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text = [teacherdata objectAtIndex:indexPath.row];
    return cell;
}

//Called After 'Save' is tapped on the AddViewController


-(IBAction)unwindToTableViewController:(UIStoryboardSegue *)sender
{
    AddViewController *addViewController = (AddViewController *)sender.sourceViewController;
    NSString *text = addViewController.teacherText.text;
    
    if (![text length] == 0 && ![[text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length] == 0) {
        
        //Add it to the top of the data source
        [teacherdata insertObject:text atIndex:0];
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
        
        //Insert into the tableview
        [self.tableView beginUpdates];
        [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
        [self.tableView endUpdates];
    }
}

-(void)setEditing:(BOOL)editing animated:(BOOL)animated
{
    [super setEditing:editing animated:animated];
    [self.tableView setEditing:editing animated:animated];
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // remove from NSMutable array
        [teacherdata removeObjectAtIndex:indexPath.row];
        //delete from the table
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationTop];
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"school"]) {
        EvaluationViewController *evaluationviewcontroller = [segue destinationViewController];
        
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        
        int row = [myIndexPath row];
        //evaluationviewcontroller.TeacherModal = @[_schools[row], _images[row]];
    }
}

@end
