//
//  DataMake.h
//  baidu
//
//  Created by lee on 14-9-10.
//  Copyright (c) 2014年 lee. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Home;

@interface DataMake : NSObject
+(NSMutableArray*) getProducts;
+(Home*) getHome;
@end
