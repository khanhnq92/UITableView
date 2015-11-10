//
//  LocationVC.m
//  FunnyFood_Part1
//
//  Created by Huy Quang Ngo on 11/9/15.
//  Copyright © 2015 KhanhNQ. All rights reserved.
//

#import "LocationVC.h"
#define sizeZoom 1.5
@interface LocationVC ()<UIScrollViewDelegate,UIGestureRecognizerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *lblAddress;

@end

@implementation LocationVC{
    UIImageView*  vimage;
    __weak IBOutlet UILabel *lblPhoneNumber;
    __weak IBOutlet UIScrollView *vScroll;
    NSDictionary* dataLocation;
}
-(instancetype)init{
    if (self=[super initWithNibName:@"LocationVC" bundle:nil]) {
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout=UIRectEdgeNone;
    self.view.backgroundColor=[UIColor whiteColor];
    [self setSprite];
    [self setScroll];
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];

}
-(void)setSprite{
    _lblAddress.text=[dataLocation objectForKey:@"location"];
    lblPhoneNumber.text=[dataLocation objectForKey:@"phoneNumber"];
}
-(void)setScroll{
    UIImage *img=[UIImage imageNamed:[dataLocation objectForKey:@"map"]];
    vimage=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width,250)];

    vimage.image=img;
    vimage.multipleTouchEnabled=true;
    vimage.userInteractionEnabled=true;
    vScroll.minimumZoomScale = 0.1;
    vScroll.maximumZoomScale = 10;
    vScroll.zoomScale = 1;
    vScroll.delegate=self;
    vScroll.backgroundColor=[UIColor grayColor];
    [vScroll addSubview:vimage];
    
    UITapGestureRecognizer* oneTap=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTap:)];
    oneTap.delegate=self;
    oneTap.numberOfTapsRequired=1;
    
    UITapGestureRecognizer* doubleTap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(doubleTap:)];
    doubleTap.numberOfTapsRequired=2;
    doubleTap.delegate=self;
    
    
    [vimage addGestureRecognizer:oneTap];
    [vimage addGestureRecognizer:doubleTap];
    [oneTap requireGestureRecognizerToFail:doubleTap];
}
-(void)onTap:(UIGestureRecognizer*)sender{

        CGPoint location=[sender locationInView:vimage];
        CGFloat newScale= vScroll.zoomScale*sizeZoom;
        [self zoomRectForScale:newScale withCenter:location];

}
-(void)doubleTap:(UIGestureRecognizer*)sender{

        CGPoint location=[sender locationInView:vimage];
        CGFloat newScale= vScroll.zoomScale/sizeZoom;
        [self zoomRectForScale:newScale withCenter:location];
    
}
-(void)zoomRectForScale:(float)scale withCenter:(CGPoint)centerTouch{
    CGRect center;
    CGSize size= vScroll.frame.size;
    
    center.size.width=size.width/scale;
    center.size.height=size.height/scale;
    center.origin.x=centerTouch.x-center.size.width/2;
    center.origin.y=centerTouch.y-center.size.height/2;
    
    [vScroll zoomToRect:center animated:true];
}
-(void)setData:(NSDictionary*)data{
    dataLocation=data;
}
-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return vimage;
}
@end
