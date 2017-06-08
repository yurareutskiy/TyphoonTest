//
//  ApplicationAssembly.m
//  TyphoonTestSingleTable
//
//  Created by Reutskiy on 07.06.17.
//  Copyright © 2017 Reutskiy. All rights reserved.
//

#import "ApplicationAssembly.h"
#import "AppDelegate.h"
#import "TableAssembly.h"
#import "SelectionAssembly.h"


@implementation ApplicationAssembly

- (AppDelegate *)appDelegate {
    return [TyphoonDefinition withClass:[AppDelegate class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(window) with:[self mainWindow]];
        [definition injectProperty:@selector(rootViewController) with:[self configureRootViewController]];
    }];
}

- (UIWindow *)mainWindow {
    return [TyphoonDefinition withClass:[UIWindow class] configuration:^(TyphoonDefinition *definition) {
                [definition useInitializer:@selector(initWithFrame:) parameters:^(TyphoonMethod *initializer) {
                    [initializer injectParameterWith:[NSValue valueWithCGRect:[[UIScreen mainScreen] bounds]]];
                }];
                [definition injectProperty:@selector(rootViewController) with:[self configureRootViewController]];
            }];
}

- (id)configureRootViewController {
    return [self.selectionComponent configureSelectionController];
}




@end
