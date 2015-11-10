//
//  MainScreen.m
//  FunnyFood_Part1
//
//  Created by Huy Quang Ngo on 11/2/15.
//  Copyright © 2015 KhanhNQ. All rights reserved.
//

#import "MainScreen.h"
#import "DetailVC.h"
@interface MainScreen ()
@property (weak, nonatomic) IBOutlet UIButton *btnDrink;

@end

@implementation MainScreen

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.backBarButtonItem=[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)processDetail:(UIButton*)sender {
    DetailVC* vc=[[DetailVC alloc] init];
    switch (sender.tag) {
        case 1:
            vc.titleName=@"ice cream";
            break;
        case 2:
            vc.titleName=@"drink";
            break;
        case 3:
            vc.titleName=@"cookies";
            break;
        case 4:
            vc.titleName=@"bread";
            break;
        case 5:
            vc.titleName=@"birthday";
            break;
        default:
            break;
    }
    [self.navigationController pushViewController:vc animated:true];
}

@end
