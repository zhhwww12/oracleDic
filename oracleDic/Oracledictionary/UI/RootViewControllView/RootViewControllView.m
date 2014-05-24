//
//  RootViewControllView.m
//  Oracledictionary
//
//  Created by bidlink on 14-3-24.
//  Copyright (c) 2014年 bidlink. All rights reserved.
//

#import "RootViewControllView.h"

@interface RootViewControllView ()

@end

@implementation RootViewControllView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    
        orcaleAllView = [[iCarousel alloc] init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self addiCarouselView];
    //添加制作页
    [self addMakeOracle];
    //添加介绍页
    [self addOracleAbout];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    if(STATU_HEIGHT>1000)
    {
        orcaleAllView.frame = CGRectMake(0, 0, SCREEN_HEIGHT, SCREEN_WIDTH);
        makeOracleBt.frame =CGRectMake(SCREEN_HEIGHT-150, SCREEN_WIDTH-60, 40, 40);
        abountBt.frame =CGRectMake(SCREEN_HEIGHT-100, SCREEN_WIDTH-60, 40, 40);
    }
    else
    {
        
        orcaleAllView.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
        makeOracleBt.frame =CGRectMake(SCREEN_WIDTH-150, SCREEN_HEIGHT-60, 40, 40);
        abountBt.frame =CGRectMake(SCREEN_WIDTH-100, SCREEN_HEIGHT-60, 40, 40);
    }
}
- (void)addOracleAbout
{
    abountBt  = [UIButton buttonWithType:UIButtonTypeContactAdd];
    if(STATU_HEIGHT>1000)
    {
        abountBt.frame =CGRectMake(SCREEN_HEIGHT-100, SCREEN_WIDTH-60, 40, 40);
    }
    else
    {
        abountBt.frame =CGRectMake(SCREEN_WIDTH-100, SCREEN_HEIGHT-60, 40, 40);
    }
    
    [self.view addSubview:abountBt];
}
- (void)addMakeOracle
{
  //  makeOracleBt = [UIButton buttonWithFram:CGRectMake(SCREEN_WIDTH-400, SCREEN_HEIGHT-60, 40, 40) imageName:nil Title:nil target:self action:@selector(makeOraclrBtClick:)];
    
    makeOracleBt  = [UIButton buttonWithType:UIButtonTypeContactAdd];
    if(STATU_HEIGHT>1000)
    {
        makeOracleBt.frame =CGRectMake(SCREEN_HEIGHT-150, SCREEN_WIDTH-60, 40, 40);
    }
    else
    {
        makeOracleBt.frame =CGRectMake(SCREEN_WIDTH-150, SCREEN_HEIGHT-60, 40, 40);
    }
   
    [self.view addSubview:makeOracleBt];
    
    
    
}
- (void)addiCarouselView
{
    orcaleAllView.delegate = self;
    orcaleAllView.dataSource = self;
    orcaleAllView.type = iCarouselTypeLinear;
    orcaleAllView.stopAtItemBoundary = NO;
    if(STATU_HEIGHT>1000)
    {
        orcaleAllView.frame = CGRectMake(0, 0, SCREEN_HEIGHT, SCREEN_WIDTH);
        
    }
    else
    {
         orcaleAllView.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    }
  
    [self.view addSubview:orcaleAllView];
    
}
- (NSUInteger)numberOfItemsInCarousel:(iCarousel *)carousel
{
    return 6;
}
- (UIView *)carousel:(iCarousel *)carousel viewForItemAtIndex:(NSUInteger)index
{
    view = (UIView*)[[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",index+1]]] ;
    if(STATU_HEIGHT>1000)
    {
        view.frame = CGRectMake(SCREEN_WIDTH/2, SCREEN_HEIGHT/2, 200, 400);
    }
    else
    {
        view.frame = CGRectMake(SCREEN_HEIGHT/2, SCREEN_WIDTH/2, 200, 400);
    }
    
    return view;
}
- (BOOL)carouselShouldWrap:(iCarousel *)carousel
{
    return YES;
}
- (void)carousel:(iCarousel *)carousel didSelectItemAtIndex:(NSInteger)index
{
    
    
    UIImageView * oneImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",index+1]]] ;
    
    
    DetailOracleVC * dOVC = [[DetailOracleVC alloc] init];
    dOVC.oneImage = oneImageView.image;
    [self presentViewController:dOVC animated:YES completion:^{
        
    }];
    
    
    
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
-(void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
    
        
}
- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    
    
    
    if(toInterfaceOrientation == UIInterfaceOrientationPortraitUpsideDown||toInterfaceOrientation == UIInterfaceOrientationPortrait)
    {
        orcaleAllView.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
        makeOracleBt.frame =CGRectMake(SCREEN_WIDTH-150, SCREEN_HEIGHT-60, 40, 40);
        abountBt.frame =CGRectMake(SCREEN_WIDTH-100, SCREEN_HEIGHT-60, 40, 40);
        
    }
    else
    {
        orcaleAllView.frame = CGRectMake(0, 0, SCREEN_HEIGHT, SCREEN_WIDTH);
        makeOracleBt.frame =CGRectMake(SCREEN_HEIGHT-150, SCREEN_WIDTH-60, 40, 40);
        abountBt.frame =CGRectMake(SCREEN_HEIGHT-100, SCREEN_WIDTH-60, 40, 40);
    }
 

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
