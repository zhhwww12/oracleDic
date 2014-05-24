//
//  DetailOracleVC.h
//  Oracledictionary
//
//  Created by bidlink on 14-3-25.
//  Copyright (c) 2014年 bidlink. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "selectTableView.h"

@interface DetailOracleVC : UIViewController
{
    UIImageView * imageView;
    UIButton * backBt;
    
    selectTableView * _listTableView;
    UIView  * listBackView;
    
    BOOL hiddenList;
    
    
}

@property(nonatomic,retain)UIImage* oneImage;
//@property(nonatomic,retain)selectTableView * _listTableView;;

@end
