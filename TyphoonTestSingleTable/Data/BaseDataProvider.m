//
//  FirstDataProvider.m
//  TyphoonTestSingleTable
//
//  Created by Reutskiy on 08.06.17.
//  Copyright © 2017 Reutskiy. All rights reserved.
//

#import "BaseDataProvider.h"

@implementation BaseDataProvider

- (NSArray*)getListItems {
    if (!self.items) {
        self.items = [NSArray array];
    } else if (self.items.count == 0) {
        [self generateItems];
    }
    return self.items;
}

- (void)generateItems {
    [[NSException exceptionWithName:@"Call undefined method 'generateItems'" reason:@"You have to override this method in child class" userInfo:nil] raise];
}


@end
