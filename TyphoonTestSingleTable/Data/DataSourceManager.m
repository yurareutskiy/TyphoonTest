//
//  DataManager.m
//  TyphoonTestSingleTable
//
//  Created by Reutskiy on 07.06.17.
//  Copyright © 2017 Reutskiy. All rights reserved.
//

#import "DataSourceManager.h"
#import "Item/ItemProtocol.h"

@implementation DataSourceManager

- (nonnull UITableViewCell *) tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    id<ItemProtocol> item = [self.sourceProvider getListItems][indexPath.row];
    [cell.textLabel setText:[item getTitle]];
    return cell;
}

- (NSInteger) tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[self.sourceProvider getListItems] count];
}

@end
