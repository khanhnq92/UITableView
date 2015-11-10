//
//  AddressVC.m
//  FunnyFood_Part1
//
//  Created by Huy Quang Ngo on 11/2/15.
//  Copyright © 2015 KhanhNQ. All rights reserved.
//

#import "AddressVC.h"
#import "LocationVC.h"
@interface AddressVC ()<UITableViewDataSource,UITableViewDelegate>
@end

@implementation AddressVC{
    NSMutableArray* arrAddress;
    UITableView* vtable;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout=UIRectEdgeNone;
    [self addSprite];
    [self setData];
}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [vtable reloadData];
}
-(void)addSprite{
    vtable=[[UITableView alloc] initWithFrame:self.view.bounds  style:UITableViewStylePlain];
    vtable.delegate=self;
    vtable.dataSource=self;
    [self.view addSubview:vtable];
}
-(void)setData{
    arrAddress=[NSMutableArray new];
    NSDictionary* item1=@{
                          @"shop":@"Shop 1",
                          @"location":@"N14, ngõ 4, Nguyễn Đình Chiểu",
                          @"phoneNumber":@"0986868686",
                          @"map":@"mapNDC.png",
                          };
    NSDictionary* item2=@{
                          @"shop":@"Shop 2",
                          @"location":@"81, Lê Văn Lương",
                          @"phoneNumber":@"0983838383",
                          @"map":@"mapLVL.png",
                          };
    [arrAddress addObject:item1];
    [arrAddress addObject:item2];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSDictionary*item=arrAddress[indexPath.row];
    
    LocationVC* vc=[[LocationVC alloc] init];
    vc.title=[item objectForKey:@"shop"];
    [vc setData:item];
    [self.navigationController pushViewController:vc animated:true];
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return arrAddress.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSDictionary* item=arrAddress[indexPath.row];
    static NSString *MyIdentifier = @"MyReuseIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle  reuseIdentifier:MyIdentifier];
    }
    
    cell.imageView.image=[UIImage imageNamed:@"location2"];
    NSLog(@"%@",[item valueForKey:@"location"]);
    cell.textLabel.text=[item valueForKey:@"shop"];
    cell.textLabel.font=[UIFont fontWithName:@"Helvetica" size:20];
    
    cell.detailTextLabel.text=[item valueForKey:@"location"];
    cell.detailTextLabel.font=[UIFont fontWithName:@"Helvetica" size:18];
    
    cell.detailTextLabel.textColor=[UIColor redColor];
    
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
}
@end
