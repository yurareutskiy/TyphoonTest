//
//  SelectionAssembly.m
//  TyphoonTestSingleTable
//
//  Created by Reutskiy on 07.06.17.
//  Copyright © 2017 Reutskiy. All rights reserved.
//

#import "SelectionAssembly.h"
#import "SelectionViewController.h"

@implementation SelectionAssembly

- (id)configureSelectionController {
    return [TyphoonDefinition withClass:[SelectionViewController class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithNibName:bundle:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:@"SelectionViewController"];
            [initializer injectParameterWith:[NSBundle mainBundle]];
        }];
    }];
}

@end
