//
//  main.m
//  binarystring
//
//  Created by Manuel Meyer on 18.02.13.
//  Copyright (c) 2013 yourcompany. All rights reserved.
//

#import <Foundation/Foundation.h>

//int main(int argc, const char * argv[])
//{
//
//    @autoreleasepool {
//        
//        NSUInteger length = 8;
//        NSUInteger n = pow(2, length);
//        for (int i = 0; i < n; i++) {
//            NSString *repr = @"" ;
//            for (int j = 0; j < length; ++j) {
//                if([repr length] % 5 == 0){
//                    repr = [@" " stringByAppendingString:repr];
//                }
//                int x =( i >> j) &1;
//                repr = [[NSString stringWithFormat:@"%u",x] stringByAppendingString:repr];
//            }
//            
//            NSLog(@"%@", repr);
//            
//            
//        }
//        
//    }
//    return 0;
//}

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSUInteger length = 16;
        NSUInteger n = pow(2, length);
        for (int i = 0; i < n; ++i) {
            NSString *repr = @"" ;
            for (int j = 0; j < length; ++j) {
                if([repr length] % 5 == 0)
                    repr = [@" " stringByAppendingString:repr];
                int x = (i >> j) & 1;
                repr = [[NSString stringWithFormat:@"%u",x] stringByAppendingString:repr];
            }
            NSLog(@"%@", repr);
        }
    }
    return 0;
}


