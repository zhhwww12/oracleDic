//
//  DetailOracleVC.m
//  Oracledictionary
//
//  Created by bidlink on 14-3-25.
//  Copyright (c) 2014年 bidlink. All rights reserved.
//

#import "DetailOracleVC.h"

@interface DetailOracleVC ()

@end

@implementation DetailOracleVC

@synthesize oneImage;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        hiddenList = YES;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self addImageView];
    [self addBackBt];
    [self addselectTableView];
    
}
- (void)addselectTableView
{
    
    listBackView = [[UIView alloc] init];
    
    listBackView.backgroundColor = [UIColor redColor];
    
    _listTableView = [[selectTableView alloc] init];
    _listTableView.backgroundColor = [UIColor redColor];
    if(STATU_HEIGHT>1000)
    {
         _listTableView.frame = CGRectMake(0, 0, 100, SCREEN_WIDTH);
        listBackView.frame =  CGRectMake(SCREEN_HEIGHT-50, 0, 150, SCREEN_WIDTH+20);
    }
    else
    {
        
        _listTableView.frame = CGRectMake(0, 0, 100, SCREEN_HEIGHT);
        listBackView.frame =  CGRectMake(SCREEN_WIDTH-50, 0, 150, SCREEN_HEIGHT+20);
    }
    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(listViewTap:)];
    [listBackView addGestureRecognizer:tap];
    
    
    [self.view addSubview:listBackView];
    [listBackView addSubview:_listTableView];
   
    
}
- (void)listViewTap:(id)sender
{
    
    if(hiddenList == YES)
    {
        if(STATU_HEIGHT>1000)
        {
            
            listBackView.frame =  CGRectMake(SCREEN_HEIGHT-150, 0, 150, SCREEN_WIDTH+20);
        }
        else
        {
            
            
            listBackView.frame =  CGRectMake(SCREEN_WIDTH-150, 0, 150, SCREEN_HEIGHT+20);
        }
        
    }
    else
    {
        if(STATU_HEIGHT>1000)
        {
            
            listBackView.frame =  CGRectMake(SCREEN_HEIGHT-100, 0, 150, SCREEN_WIDTH+20);
        }
        else
        {
            
            
            listBackView.frame =  CGRectMake(SCREEN_WIDTH-100, 0, 150, SCREEN_HEIGHT+20);
        }
    }
   
}
- (void)viewWillAppear:(BOOL)animated
{
  
    if(STATU_HEIGHT>1000)
    {
        backBt.frame =CGRectMake(100, SCREEN_WIDTH-100, 40, 40);
        imageView.frame = CGRectMake((SCREEN_HEIGHT-400)/2, (SCREEN_WIDTH-400)/2, 400, 400);
        _listTableView.frame = CGRectMake(SCREEN_HEIGHT-50, 0, 100, SCREEN_WIDTH);
       listBackView.frame =  CGRectMake(SCREEN_HEIGHT-50, 0, 100, SCREEN_WIDTH+20);
        
    }
    else
    {
        backBt.frame =CGRectMake(100, SCREEN_HEIGHT-100, 40, 40);
        imageView.frame = CGRectMake((SCREEN_WIDTH-400)/2, (SCREEN_HEIGHT-400)/2, 400, 400);
         _listTableView.frame = CGRectMake(SCREEN_WIDTH-50, 0, 100, SCREEN_HEIGHT);
        listBackView.frame =  CGRectMake(SCREEN_WIDTH-50, 0, 100, SCREEN_HEIGHT+20);
    }
}
- (void)addBackBt
{
    backBt  = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [backBt addTarget:self action:@selector(backBtClick:) forControlEvents:UIControlEventTouchUpInside];
    
    backBt.frame = CGRectMake(0, 0, 40, 40);
    [self.view addSubview:backBt];
}
- (void)backBtClick:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
    
}
- (void)addImageView
{
    imageView = [[UIImageView alloc] initWithFrame:CGRectMake((SCREEN_WIDTH-400)/2, (SCREEN_HEIGHT-400)/2, 400, 400)];
    
    
    imageView.image = self.oneImage;
    [self.view addSubview:imageView];
    
    
}

#ifdef __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_6_0_MSG

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return YES;
}
#else
- (BOOL)shouldAutorotate
{
    return YES;
    
}
#endif


- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    
    
    
    NSInteger keepAway = 150;
    if(hiddenList == YES)
    {
        keepAway = 50;
    }
    
    if(toInterfaceOrientation == UIInterfaceOrientationPortraitUpsideDown||toInterfaceOrientation == UIInterfaceOrientationPortrait)
    {
        
        imageView.frame = CGRectMake((SCREEN_WIDTH-400)/2, (SCREEN_HEIGHT-400)/2, 400, 400);
         backBt.frame =CGRectMake(100, SCREEN_HEIGHT-100, 40, 40);
        _listTableView.frame = CGRectMake(SCREEN_WIDTH-50, 0, 100, SCREEN_HEIGHT);
         listBackView.frame =  CGRectMake(SCREEN_WIDTH-keepAway, 0, 100, SCREEN_HEIGHT+20);
    }
    else
    {
        imageView.frame = CGRectMake((SCREEN_HEIGHT-400)/2, (SCREEN_WIDTH-400)/2, 400, 400);
        backBt.frame =CGRectMake(100, SCREEN_WIDTH-100, 40, 40);
        _listTableView.frame = CGRectMake(SCREEN_HEIGHT-50, 0, 100, SCREEN_WIDTH);
        listBackView.frame =  CGRectMake(SCREEN_HEIGHT-keepAway, 0, 100, SCREEN_WIDTH+20);
    }
    
    
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
