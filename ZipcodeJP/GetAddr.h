//
//  GetAddr.h
//  ZipcodeJP
//
//  Created by 小野寺耕平 on 2014/08/20.
//  Copyright (c) 2014年 Kohei Onodera. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "fmdb/FMDB.h"

@interface GetAddr : NSObject

- (NSArray*)getAddr:(NSString*)zipcode;

@end
