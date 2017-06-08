//
//  TableItem.m
//  TyphoonTestSingleTable
//
//  Created by Reutskiy on 07.06.17.
//  Copyright © 2017 Reutskiy. All rights reserved.
//

#import "TableItem.h"

@interface TableItem ()

@property (strong, nonatomic) NSString *title;

@end

@implementation TableItem

- (NSString *) getTitle {
    return self.title;
}


- (id)initWithTitle:(NSString*)title {
    self = [super init];
    if (self) {
        _title = title;
    }
    return self;
}


@end
