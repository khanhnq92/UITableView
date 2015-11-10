//
//  DetailVC.m
//  FunnyFood_Part1
//
//  Created by Huy Quang Ngo on 11/3/15.
//  Copyright © 2015 KhanhNQ. All rights reserved.
//

#import "DetailVC.h"
#import "DetailItem.h"
#import "TableViewCell.h"
#import "DetailItemVC.h"
@interface DetailVC ()

@end

@implementation DetailVC{
    NSMutableArray* arrData;
    NSMutableArray* dicData;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self setData];
    [self getData];
    [self.tableView reloadData];

}
-(void)setData{
    dicData=[NSMutableArray new];
    DetailItem* item1=[[DetailItem alloc] initWithName:@"Tea" price:@"10$" saleOff:@"" image:[UIImage imageNamed:@"drink01.jpg"]];
    DetailItem* item2=[[DetailItem alloc] initWithName:@"Coffe" price:@"20$" saleOff:@"20%" image:[UIImage imageNamed:@"drink02.jpg"]];
    DetailItem* item3=[[DetailItem alloc] initWithName:@"CoCa" price:@"20$" saleOff:@"25%" image:[UIImage imageNamed:@"drink03.jpg"]];
    DetailItem* item4=[[DetailItem alloc] initWithName:@"Bia" price:@"30$" saleOff:@"25%" image:[UIImage imageNamed:@"drink04.jpg"]];
    DetailItem* item5=[[DetailItem alloc] initWithName:@"Sữa" price:@"40$" saleOff:@"25%" image:[UIImage imageNamed:@"drink05.jpg"]];
    DetailItem* item6=[[DetailItem alloc] initWithName:@"Rượu" price:@"50$" saleOff:@"25%" image:[UIImage imageNamed:@"drink06.jpg"]];
    DetailItem* item7=[[DetailItem alloc] initWithName:@"Rượu vang" price:@"60$" saleOff:@"" image:[UIImage imageNamed:@"drink07.jpg"]];
    NSMutableArray* temp=[NSMutableArray new];
    temp.array=@[item1,item2,item3,item4,item5,item6,item7];
    [dicData addObject:temp];
    
    DetailItem* item11=[[DetailItem alloc] initWithName:@"birthday01" price:@"10$" saleOff:@"" image:[UIImage imageNamed:@"birthday01.jpg"]];
    DetailItem* item21=[[DetailItem alloc] initWithName:@"birthday02" price:@"20$" saleOff:@"20%" image:[UIImage imageNamed:@"birthday02.jpg"]];
    DetailItem* item31=[[DetailItem alloc] initWithName:@"birthday03" price:@"20$" saleOff:@"25%" image:[UIImage imageNamed:@"birthday03.jpg"]];
    DetailItem* item41=[[DetailItem alloc] initWithName:@"birthday04" price:@"30$" saleOff:@"25%" image:[UIImage imageNamed:@"birthday04.jpg"]];
    DetailItem* item51=[[DetailItem alloc] initWithName:@"birthday05" price:@"40$" saleOff:@"25%" image:[UIImage imageNamed:@"birthday05.jpg"]];
    DetailItem* item61=[[DetailItem alloc] initWithName:@"birthday07" price:@"50$" saleOff:@"25%" image:[UIImage imageNamed:@"birthday6.jpg"]];
    DetailItem* item71=[[DetailItem alloc] initWithName:@"birthday06" price:@"60$" saleOff:@"" image:[UIImage imageNamed:@"birthday07.jpg"]];
    NSMutableArray* temp2=[NSMutableArray new];
    temp2.array=@[item11,item21,item31,item41,item51,item61,item71];
     [dicData addObject:temp2];
    
    DetailItem* item12=[[DetailItem alloc] initWithName:@"cookies01" price:@"10$" saleOff:@"" image:[UIImage imageNamed:@"cookies01.jpg"]];
    DetailItem* item22=[[DetailItem alloc] initWithName:@"cookies01" price:@"20$" saleOff:@"20%" image:[UIImage imageNamed:@"cookies02.jpg"]];
    DetailItem* item32=[[DetailItem alloc] initWithName:@"cookies01" price:@"20$" saleOff:@"25%" image:[UIImage imageNamed:@"cookies03.jpg"]];
    DetailItem* item42=[[DetailItem alloc] initWithName:@"cookies01" price:@"30$" saleOff:@"25%" image:[UIImage imageNamed:@"cookies04.jpg"]];
    DetailItem* item52=[[DetailItem alloc] initWithName:@"cookies01" price:@"40$" saleOff:@"25%" image:[UIImage imageNamed:@"cookies05.jpg"]];
    DetailItem* item62=[[DetailItem alloc] initWithName:@"cookies01" price:@"50$" saleOff:@"25%" image:[UIImage imageNamed:@"cookies06.jpg"]];
    DetailItem* item72=[[DetailItem alloc] initWithName:@"cookies01" price:@"60$" saleOff:@"" image:[UIImage imageNamed:@"cookies07.jpg"]];
    NSMutableArray* temp3=[NSMutableArray new];
    temp3.array=@[item12,item22,item32,item42,item52,item62,item72];
     [dicData addObject:temp3];

    DetailItem* item13=[[DetailItem alloc] initWithName:@"Bread1" price:@"10$" saleOff:@"" image:[UIImage imageNamed:@"bread01.jpg"]];
    DetailItem* item23=[[DetailItem alloc] initWithName:@"Bread2" price:@"20$" saleOff:@"20%" image:[UIImage imageNamed:@"bread02.jpg"]];
    DetailItem* item33=[[DetailItem alloc] initWithName:@"Bread3" price:@"20$" saleOff:@"25%" image:[UIImage imageNamed:@"bread03.jpg"]];
    DetailItem* item43=[[DetailItem alloc] initWithName:@"Bread4" price:@"30$" saleOff:@"25%" image:[UIImage imageNamed:@"bread04.jpg"]];
    DetailItem* item53=[[DetailItem alloc] initWithName:@"Bread5" price:@"40$" saleOff:@"25%" image:[UIImage imageNamed:@"bread05.jpg"]];
    DetailItem* item63=[[DetailItem alloc] initWithName:@"Bread6" price:@"50$" saleOff:@"25%" image:[UIImage imageNamed:@"bread06.jpg"]];
    DetailItem* item73=[[DetailItem alloc] initWithName:@"Bread7" price:@"60$" saleOff:@"" image:[UIImage imageNamed:@"bread07.jpg"]];
    NSMutableArray* temp4=[NSMutableArray new];
    temp4.array=@[item13,item23,item33,item43,item53,item63,item73];
     [dicData addObject:temp4];

    DetailItem* item14=[[DetailItem alloc] initWithName:@"Ice Cream1" price:@"10$" saleOff:@"" image:[UIImage imageNamed:@"cream01.jpg"]];
    DetailItem* item24=[[DetailItem alloc] initWithName:@"Ice Cream2" price:@"20$" saleOff:@"20%" image:[UIImage imageNamed:@"cream02.jpg"]];
    DetailItem* item34=[[DetailItem alloc] initWithName:@"Ice Cream3" price:@"20$" saleOff:@"25%" image:[UIImage imageNamed:@"cream03.jpg"]];
    DetailItem* item44=[[DetailItem alloc] initWithName:@"Ice Cream4" price:@"30$" saleOff:@"25%" image:[UIImage imageNamed:@"cream04.jpg"]];
    DetailItem* item54=[[DetailItem alloc] initWithName:@"Ice Cream5" price:@"40$" saleOff:@"25%" image:[UIImage imageNamed:@"cream05.jpg"]];
    DetailItem* item64=[[DetailItem alloc] initWithName:@"Ice Cream6" price:@"50$" saleOff:@"25%" image:[UIImage imageNamed:@"cream06.jpg"]];
    DetailItem* item74=[[DetailItem alloc] initWithName:@"Ice Cream7" price:@"60$" saleOff:@"" image:[UIImage imageNamed:@"cream07.jpg"]];
    NSMutableArray* temp5=[NSMutableArray new];
    temp5.array=@[item14,item24,item34,item44,item54,item64,item74];
     [dicData addObject:temp5];

}
-(void)getData{
    if (_isSaleOff) {
        [self setDataSaleOff];
    }else if ([self.titleName isEqualToString:@"drink"]) {
        arrData=[[NSMutableArray alloc] initWithArray:[dicData objectAtIndex:0]];
    }else if ([self.titleName isEqualToString:@"birthday"]){
        arrData=[[NSMutableArray alloc] initWithArray:[dicData objectAtIndex:1]];
    }else if([self.titleName isEqualToString:@"cookies"]){
        arrData=[[NSMutableArray alloc] initWithArray:[dicData objectAtIndex:2]];
    }else if([self.titleName isEqualToString:@"bread"]){
        arrData=[[NSMutableArray alloc] initWithArray:[dicData objectAtIndex:3]];
    }else
        arrData=[[NSMutableArray alloc] initWithArray:[dicData objectAtIndex:4]];
}
-(void)setDataSaleOff{
    arrData=[NSMutableArray new];
    for (NSArray* arrItem in dicData) {
        for (DetailItem* item in arrItem) {
            if (item.saleOff&&item.saleOff.length>0) {
                [arrData addObject:item];
            }
        }
    }
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return arrData.count;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//    DetailItemVC* vc=[[DetailItemVC alloc] init];
    DetailItemVC* vc=[[DetailItemVC alloc] initWithNibName:@"DetailItemVCViewController" bundle:nil];
    vc.title=@"Detail";
    [vc setData:arrData[indexPath.row]];
    [self.navigationController pushViewController:vc animated:true];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell* cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(!cell){
        cell=[[NSBundle mainBundle] loadNibNamed:@"TableViewCell" owner:nil options:nil].firstObject;
    }

    [cell setDataCell:arrData[indexPath.row]];
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
}

@end
