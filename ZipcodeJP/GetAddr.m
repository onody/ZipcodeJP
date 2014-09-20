//
//  GetAddr.m
//  ZipcodeJP
//
//  Created by 小野寺耕平 on 2014/08/20.
//  Copyright (c) 2014年 Kohei Onodera. All rights reserved.
//

#import "GetAddr.h"



@implementation GetAddr

- (NSArray*)getAddr:(NSString*)zipcode{
    
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"app" ofType:@"db"];
    FMDatabase *db    = [FMDatabase databaseWithPath:filePath];
    
    NSString *sql_select = [NSString stringWithFormat:@"SELECT id, pref, city, address FROM zipcodes WHERE code = '%@' LIMIT 1;", zipcode];

    
    [db open];

    FMResultSet *rs = [db executeQuery:sql_select];
    NSArray *addr = [NSArray new];

    
    if(rs == nil){
        addr = [NSArray arrayWithObjects:nil];
    }else{
        while ([rs next]) {
            addr = [NSArray arrayWithObjects:[rs stringForColumnIndex:1], [rs stringForColumnIndex:2], [rs stringForColumnIndex:3], nil];
        }
    }
    
    [db close];

    return addr;
    
}

@end
