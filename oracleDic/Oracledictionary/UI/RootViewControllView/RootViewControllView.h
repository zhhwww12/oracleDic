//
//  RootViewControllView.h
//  Oracledictionary
//
//  Created by bidlink on 14-3-24.
//  Copyright (c) 2014年 bidlink. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iCarousel.h"
#import "UIButton+EXbutton.h"
#import "DetailOracleVC.h"
@interface RootViewControllView : EngineViewController<iCarouselDataSource,iCarouselDelegate>
{
    iCarousel * orcaleAllView;
    UIView *view;
    UIButton * makeOracleBt;
    UIButton * abountBt;
    
}

@end
