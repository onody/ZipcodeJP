//
//  main.m
//  ZipcodeJP
//
//  Created by 小野寺耕平 on 2014/08/17.
//  Copyright (c) 2014年 Kohei Onodera. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GetAddr.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        GetAddr *ga = [GetAddr new];
        NSArray *addr = [ga getAddr:@"4110043"];
        
        NSUInteger count = [addr count];
        
        if(count > 0){
            for (id obj in addr) {
                NSLog(@"%@", obj);
            }
        }else{
            NSLog(@"address data was not found.");
        }
        
        
    }
    return 0;
}
