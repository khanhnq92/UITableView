//
//  TableViewCell.m
//  FunnyFood_Part1
//
//  Created by Huy Quang Ngo on 11/3/15.
//  Copyright © 2015 KhanhNQ. All rights reserved.
//

#import "TableViewCell.h"
@interface TableViewCell()
@property (weak, nonatomic) IBOutlet UIImageView *imgItem;
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblSaleOff;
@property (weak, nonatomic) IBOutlet UILabel *lblPrice;

@end
@implementation TableViewCell

- (void)awakeFromNib {
    // Initialization code
}
-(void)setDataCell:(DetailItem*)data{
    self.lblName.text=data.name;
    self.lblPrice.text=data.price;
    self.lblSaleOff.text=data.saleOff;
    self.imgItem.image=data.image;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
