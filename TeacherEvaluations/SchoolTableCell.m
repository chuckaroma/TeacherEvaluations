//
//  SchoolTableCell.m
//  TeacherEvaluations
//
//  Created by Charles Bailey on 8/16/14.
//  Copyright (c) 2014 charlesbailey. All rights reserved.
//

#import "SchoolTableCell.h"

@implementation SchoolTableCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
