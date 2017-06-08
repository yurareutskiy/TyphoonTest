//
//  SelectionViewController.h
//  TyphoonTestSingleTable
//
//  Created by Reutskiy on 07.06.17.
//  Copyright © 2017 Reutskiy. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ApplicationAssembly;

@interface SelectionViewController : UIViewController
@property (strong, nonatomic) ApplicationAssembly *assembly;

- (IBAction)didSelectAction:(UIButton *)sender;

@end
