//
//  TableViewCell.h
//  FunnyFood_Part1
//
//  Created by Huy Quang Ngo on 11/3/15.
//  Copyright © 2015 KhanhNQ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailItem.h"
@interface TableViewCell : UITableViewCell
-(void)setDataCell:(DetailItem*)data;
@end
