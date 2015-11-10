//
//  AboutVC.m
//  FunnyFood_Part1
//
//  Created by Huy Quang Ngo on 11/2/15.
//  Copyright © 2015 KhanhNQ. All rights reserved.
//

#import "AboutVC.h"

@interface AboutVC ()

@end

@implementation AboutVC{
    NSTimer* timer;
    UITextView* textField;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout=UIRectEdgeNone;
    [self setSprite];
}
-(void)setSprite{
    UIImageView* img=[[UIImageView alloc] initWithFrame:self.view.bounds];
    img.image = [UIImage imageNamed:@"backGroundBlack.jpg"];
    [self.view addSubview:img];
    
    
    textField=[[UITextView alloc] initWithFrame:CGRectMake(20, 0, self.view.bounds.size.width-40,400)];

    textField.text=@"\n\n\n\n\n   Nhà hàng bánh ngọt Funny Food  khai trương ngày 20 tháng 10 vừa qua hứa hẹn trở thành một điểm đến lý thú cho những ai yêu thích văn hóa ẩm thực Pháp.\n\n   Đến với Funny Food thực khách không chỉ được thưởng thức các món bánh với hương vị Pháp tuyệt hảo mà còn được tận mắt chứng kiến không gian thưởng thức mang đậm phong cách của nước Pháp hoa lệ và trang nhã.\n\n    Funny Food có đủ chủng loại bánh Gato, bánh mì, bánh bỏ lò, pizza, café, fastfood… do các chuyên gia đến từ Pháp đảm nhiệm chế biến.";
    textField.textColor=[UIColor whiteColor];
    textField.backgroundColor=[UIColor clearColor];
    textField.font = [UIFont fontWithName:@"Helvetica" size:17];
    [self.view addSubview:textField];
    
    timer=[NSTimer scheduledTimerWithTimeInterval:60.0/1000.0 target:self selector:@selector(runningText) userInfo:nil repeats:true];
}
-(void)runningText{
    CGPoint pTextField=textField.contentOffset;
    pTextField.y+=2;
    if (pTextField.y>420) {
        pTextField.y=0;
    }
    [textField setContentOffset:pTextField animated:NO];
    NSLog(@"%f-%f",    textField.contentOffset.x,    textField.contentOffset.y);
}
@end
