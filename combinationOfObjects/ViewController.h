//
//  ViewController.h
//  combinationOfObjects
//
//  Created by Student on 05/09/15.
//  Copyright (c) 2015 BRN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (strong, nonatomic) IBOutlet UISwitch *personalDetailsSwitchOutlet;

- (IBAction)personalDetailsSwitchAction:(id)sender;

@property (strong, nonatomic) IBOutlet UISwitch *professionalDetailsSwitchOutlet;

- (IBAction)professionalDetailsSwitchAction:(id)sender;

@property UIView *personalDetailView;
@property UIView *professionalDetailView;
@property int x,y,w,h;
@property int a,b,c,d;
@property UIScrollView *scrollView;


@end

