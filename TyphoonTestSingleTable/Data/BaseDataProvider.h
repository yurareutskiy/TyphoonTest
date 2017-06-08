//
//  FirstDataProvider.h
//  TyphoonTestSingleTable
//
//  Created by Reutskiy on 08.06.17.
//  Copyright © 2017 Reutskiy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DataProviderProtocol.h"
#import "TableItem.h"

@interface BaseDataProvider : NSObject<DataProviderProtocol>

- (NSArray*)getListItems;
- (void)generateItems;

@property NSArray *items;

@end
