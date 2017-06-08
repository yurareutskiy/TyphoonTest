//
//  FirstDataProvider.m
//  TyphoonTestSingleTable
//
//  Created by Reutskiy on 08.06.17.
//  Copyright © 2017 Reutskiy. All rights reserved.
//

#import "FirstDataProvider.h"

@implementation FirstDataProvider

-(void)generateItems {
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < 20; i++) {
        NSString *title = [NSString stringWithFormat:@"%d строка в первом варианте", i];
        id<ItemProtocol> item = [[TableItem alloc] initWithTitle:title];
        [tempArray addObject:item];
    }
    self.items = tempArray;
}


@end
