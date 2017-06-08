//
//  DataManager.h
//  TyphoonTestSingleTable
//
//  Created by Reutskiy on 07.06.17.
//  Copyright © 2017 Reutskiy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataProviderProtocol.h"


@interface DataSourceManager : NSObject<UITableViewDataSource>

@property (strong, nonatomic) id<DataProviderProtocol> sourceProvider;

@end
