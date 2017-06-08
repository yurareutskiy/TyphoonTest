//
//  ApplicationAssembly.h
//  TyphoonTestSingleTable
//
//  Created by Reutskiy on 07.06.17.
//  Copyright © 2017 Reutskiy. All rights reserved.
//

#import <Typhoon/Typhoon.h>

@class AppDelegate;
@class TableAssembly;
@class SelectionAssembly;

@interface ApplicationAssembly : TyphoonAssembly

- (AppDelegate *)appDelegate;

@property (strong, nonatomic) TableAssembly *tableComponent;
@property (strong, nonatomic) SelectionAssembly *selectionComponent;


@end
