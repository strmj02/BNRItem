//
//  main.m
//  RandomPossessionts
//
//  Created by Rachel Johnson on 1/22/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //BNRItem *d = [[BNRItem alloc] initWithItemName:@"my first item" valueInDollars:100 serialNumber:@"12345"];

        
        NSMutableArray *items = [[NSMutableArray alloc]init];
        
        for(int i = 0; i<10;i++){
            BNRItem *p = [BNRItem randomItem];
            [items addObject:p];
        };
        
        for (int i = 0; i < [items count]; i++){
            NSLog(@"%@", [items description]);
        };
        
        for (BNRItem *item in items){
            NSLog(@"%@", item);
        }; //fast enumeration!!!!
        
        //NSMutableArray *items = [[NSMutableArray alloc]init];
        //items = nil; this is how to get rid of it
        
        //[items addObject:@"One"];
        //[items addObject:@"Two"];
        //[items addObject:@"Three"];
        
        //[items insertObject:@"Hi" atIndex:0];
        //items = nil;
        
    }
    return 0;
}

