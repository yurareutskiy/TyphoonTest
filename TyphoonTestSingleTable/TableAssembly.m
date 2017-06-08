//
//  TableAssembly.m
//  TyphoonTestSingleTable
//
//  Created by Reutskiy on 07.06.17.
//  Copyright © 2017 Reutskiy. All rights reserved.
//

#import "TableAssembly.h"
#import "DataSourceManager.h"
#import "TableItem.h"
#import "DataTableViewController.h"
#import "FirstDataProvider.h"
#import "SecondDataProvider.h"


typedef enum : NSUInteger {
    TableTypeFirst,
    TableTypeSecond,
} TableType;

@implementation TableAssembly

- (id) configureTableControllerWithTag:(int)tag {
    TableType type;
    switch (tag) {
        case 101:
            type = TableTypeSecond;
            break;
        case 100:
        default:
            type = TableTypeFirst;
            break;
    }
    return [TyphoonDefinition withClass:[DataTableViewController class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(dataSourceProvider) with:[self dataSourceProviderByType:type]];
    }];
}

- (DataSourceManager*)dataSourceProviderByType:(TableType)type {
    id<DataProviderProtocol> provider;
    switch (type) {
        case TableTypeFirst:
            provider = [self configureDataForFirst];
            break;
        case TableTypeSecond:
            provider = [self configureDataForSecond];
            break;
        default:
            break;
    }
    
    return [TyphoonDefinition withClass:[DataSourceManager class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(sourceProvider) with:provider];
    }];
}

- (id)configureDataForFirst {
    return [TyphoonDefinition withClass:[FirstDataProvider class]];
}

- (id)configureDataForSecond {
    return [TyphoonDefinition withClass:[SecondDataProvider class]];
}

@end
