//
//  StartViewController.h
//  TyphoonTestSingleTable
//
//  Created by Reutskiy on 07.06.17.
//  Copyright © 2017 Reutskiy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataTableViewController : UITableViewController

@property (strong, nonatomic) id<UITableViewDataSource> dataSourceProvider;

@end
