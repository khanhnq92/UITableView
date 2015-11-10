//
//  DetailItem.h
//  FunnyFood_Part1
//
//  Created by Huy Quang Ngo on 11/3/15.
//  Copyright © 2015 KhanhNQ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface DetailItem : NSObject
@property(nonatomic,strong)NSString* name;
@property(nonatomic,strong)NSString* price;
@property(nonatomic,strong)NSString* saleOff;
@property(nonatomic,strong)UIImage* image;
-(instancetype) initWithName:(NSString*)name price:(NSString*)price saleOff:(NSString*)saleOff image:(UIImage*)image;
@end
