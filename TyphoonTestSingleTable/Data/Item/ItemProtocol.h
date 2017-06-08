//
//  ItemProtocol.h
//  TyphoonTestSingleTable
//
//  Created by Reutskiy on 07.06.17.
//  Copyright © 2017 Reutskiy. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ItemProtocol <NSObject>

- (NSString*) getTitle;

- (id)initWithTitle:(NSString*)title;

@end
