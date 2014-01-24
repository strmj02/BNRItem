//
//  BNRItem.m
//  RandomPossessionts
//
//  Created by Rachel Johnson on 1/22/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem


-(BNRItem *)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber{
    self = [super init];
    if (self){
        [self setItemName:name];
        [self setValueInDollars:value];
        [self setSerialNumber:sNumber];
        dateCreated = [[NSDate alloc]init];
    }
    return self;
}; //designated initialized- makes sure no instance variables are undefined



+(id)randomItem{
    NSArray *randomAdjectives = [NSArray arrayWithObjects:@"Fluffy", @"Rusty", @"Shiny", nil];
    NSArray *randomNouns = [NSArray arrayWithObjects:@"Bear",@"Spork", @"MAC", nil];
    NSInteger adjIndex = rand() % [randomAdjectives count];
    NSInteger nounIndex = rand() % [randomNouns count];
    NSString *randomName = [NSString stringWithFormat:@"%@ %@", [randomAdjectives objectAtIndex:adjIndex], [randomNouns objectAtIndex:nounIndex]];
    int randomValue = rand() % 100;
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c", '0' + rand()%10, 'A' + rand() %26, '0' + rand()%10, 'A' + rand() %26, '0' + rand()%10];
    
    BNRItem *newItem = [[self alloc]initWithItemName:randomName valueInDollars:randomValue serialNumber:randomSerialNumber];
    return newItem;
}

-(NSString *)itemName{
    return itemName;
}
-(void)setItemName:(NSString *)str{
    itemName = str;
}

-(NSString *)serialNumber{
    return serialNumber;
}
-(void)setSerialNumber:(NSString *)str{
    serialNumber = str;
}

-(NSDate *)dateCreated{
    return dateCreated;
}
-(void)setDateCreated:(NSDate *)date{
    dateCreated = date;
}

-(int)valueInDollars{
    return valueInDollars;
}
-(void)setValueInDollars:(int)value{
    valueInDollars = value;
}

@end
