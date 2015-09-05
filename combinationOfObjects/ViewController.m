//
//  ViewController.m
//  combinationOfObjects
//
//  Created by Student on 05/09/15.
//  Copyright (c) 2015 BRN. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _personalDetailsSwitchOutlet.on=NO;
    _professionalDetailsSwitchOutlet.on=NO;
    
    _x =35;
    _y =0;
    _w =250;
    _h =200;
    
    _a =35;
    _b =0;
    _c =250;
    _d =200;
    
    _scrollView =[[UIScrollView alloc]initWithFrame:CGRectMake(0, 200, 500, 600)];
    _scrollView.showsVerticalScrollIndicator=YES;
    _scrollView.contentSize=CGSizeMake(0, 2500);
    [self.view addSubview:_scrollView];
    

    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)personalDetailsSwitchAction:(id)sender
{
    if (_professionalDetailsSwitchOutlet.on==YES)
    {
        _y=_y+_b+_h+20;
    }
    if (_personalDetailsSwitchOutlet.on==YES)
    {
        _personalDetailView =[[UIView alloc]initWithFrame:CGRectMake(_x, _y, _w, _h)];
        _personalDetailView.backgroundColor=[UIColor blueColor];
        [self.scrollView addSubview:_personalDetailView];
    }
    else
    {
        _y=0;
        _personalDetailView.hidden=YES;
    }
    
    
}
- (IBAction)professionalDetailsSwitchAction:(id)sender
{
    if (_personalDetailsSwitchOutlet.on==YES)
    {
        _b=_b+_y+_d+20;
    }
    if (_professionalDetailsSwitchOutlet.on==YES)
    {
         _professionalDetailView=[[UIView alloc]initWithFrame:CGRectMake(_a, _b, _c, _d)];
        _professionalDetailView.backgroundColor=[UIColor redColor];
        [self.scrollView addSubview:_professionalDetailView];

    }
    else
    {
        _b=0;
        _professionalDetailView.hidden=YES;
    
    }
    
}
@end
