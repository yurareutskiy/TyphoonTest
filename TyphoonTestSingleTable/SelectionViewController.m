//
//  SelectionViewController.m
//  TyphoonTestSingleTable
//
//  Created by Reutskiy on 07.06.17.
//  Copyright © 2017 Reutskiy. All rights reserved.
//

#import "SelectionViewController.h"
#import "ApplicationAssembly.h"
#import "TableAssembly.h"

@interface SelectionViewController ()

@end

@implementation SelectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


- (IBAction)didSelectAction:(UIButton *)sender {
    UIViewController *vc = [self.assembly tableComponent] ;
    [self.navigationController pushViewController:vc animated:true];
}


@end
