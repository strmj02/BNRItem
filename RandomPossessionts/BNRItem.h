//
//  BNRItem.h
//  RandomPossessionts
//
//  Created by Rachel Johnson on 1/22/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject{
    NSString *itemName;
    NSString *serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
}

-(id)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber;

+(id)randomItem;


-(NSString *)itemName;
-(void)setItemName:(NSString *)str;

-(NSString *)serialNumber;
-(void)setSerialNumber:(NSString *)str;

-(NSDate *)dateCreated;
-(void)setDateCreated:(NSDate *)date;

-(int)valueInDollars;
-(void)setValueInDollars:(int)value;

//add and implement in .m the different getters and setters for serialNumber, etc. other values.

@end
