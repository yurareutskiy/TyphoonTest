//
//  TableItem.h
//  TyphoonTestSingleTable
//
//  Created by Reutskiy on 07.06.17.
//  Copyright © 2017 Reutskiy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ItemProtocol.h"

@interface TableItem : NSObject<ItemProtocol>

- (NSString *) getTitle;

- (id)initWithTitle:(NSString*)title;

@end
