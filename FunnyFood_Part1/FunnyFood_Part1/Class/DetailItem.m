//
//  DetailItem.m
//  FunnyFood_Part1
//
//  Created by Huy Quang Ngo on 11/3/15.
//  Copyright © 2015 KhanhNQ. All rights reserved.
//

#import "DetailItem.h"

@implementation DetailItem
-(instancetype) initWithName:(NSString*)name price:(NSString*)price saleOff:(NSString*)saleOff image:(UIImage*)image{
    if (self=[super init]) {
        self.name=name;
        self.price=price;
        self.saleOff=saleOff;
        self.image=image;
    
    }
    return self;
}
@end
