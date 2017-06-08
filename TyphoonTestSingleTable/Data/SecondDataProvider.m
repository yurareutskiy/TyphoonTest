//
//  SecondDataProvider.m
//  TyphoonTestSingleTable
//
//  Created by Reutskiy on 08.06.17.
//  Copyright © 2017 Reutskiy. All rights reserved.
//

#import "SecondDataProvider.h"

@implementation SecondDataProvider

-(void)generateItems {
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    for (int i = 20; i < 0; i--) {
        NSString *title = [NSString stringWithFormat:@"%d строка во втором варианте", i];
        id<ItemProtocol> item = [[TableItem alloc] initWithTitle:title];
        [tempArray addObject:item];
    }
    self.items = tempArray;
}


@end
