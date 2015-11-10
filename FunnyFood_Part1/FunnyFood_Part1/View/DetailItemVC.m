//
//  DetailItemVCViewController.m
//  FunnyFood_Part1
//
//  Created by Huy Quang Ngo on 11/5/15.
//  Copyright © 2015 KhanhNQ. All rights reserved.
//

#import "DetailItemVC.h"

@interface DetailItemVC ()
@property (weak, nonatomic) IBOutlet UIImageView *img;
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblPrice;

@end

@implementation DetailItemVC

- (void)viewDidLoad {
    [super viewDidLoad];

}
-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    if (self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        [[NSBundle mainBundle] loadNibNamed:nibNameOrNil owner:self options:nil];
    }
    return self;
}
-(void)setData:(DetailItem *)data{
    _img.image=data.image;
    _lblName.text=data.name;
    _lblPrice.text=data.price;
}
@end
