//
//  main.m
//  RandomPossessionts
//
//  Created by Rachel Johnson on 1/22/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Rachel");
        NSString *firstName = @"Rachel";
        NSLog(@"%@",firstName);
        NSNumber *num= @200;
        NSLog(@"%@", num);
        NSArray *fruits = @[@"kiwi", @"banana", @"apple"];
        for(NSString *fruit in fruits){
            NSLog(@"%@", fruit);
        }
        NSDictionary *sweetness = @{@"kiwi":@8, @"banana":@2, @"apple":@4};
        NSLog(@"Sweetness of apple: %@", sweetness[@"apple"]);
        NSUInteger i = 123;
        NSLog(@"%lu", i);
        NSNumber *one = @8;
        NSNumber *two = @6;
        NSUInteger one1 = [one unsignedIntegerValue];
        NSUInteger two2 = [two unsignedIntegerValue];
        NSUInteger result = one1 * two2;
        NSLog(@"%lu", result);
        
        NSString *lastName = @"Johnson";
        NSString *fullName = [[firstName stringByAppendingString:@" "]stringByAppendingString:lastName];
        
        NSLog(@"Fullname is: %@", fullName);
        
        
        for(NSString *fruit in fruits){
            //NSLog(@"%@",sweetness[fruit]);

        if(sweetness[fruit] < @4){
            NSLog(@"Not Sweet");
        }
        else if(sweetness[fruit] < @7 ){
            NSLog(@"Somewhat sweet");
        }
        else{
            NSLog(@"Sweet");
        }
        }
        
        //enum Monday = 1;
        
        //def DayOfWeek;
        
        void(^myFirstBlock)(void) = ^{
            NSLog(@"Hello World");
        };
        
        myFirstBlock();
        
       // void(^mySecondBlock)(NSString *str)= (NSString *str)^{
        //    NSlog(@"%@");
        //};
        
        
                              
                             
    }
    return 0;
}

