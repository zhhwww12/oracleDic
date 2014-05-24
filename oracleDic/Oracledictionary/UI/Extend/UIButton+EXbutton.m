//
//  UIButton+EXbutton.m
//  findPlaceOfMap
//
//  Created by 付伟 吴 on 12-4-24.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "UIButton+EXbutton.h"

@implementation UIButton (EXbutton)
+(UIButton*)buttonWithFram:(CGRect)fram imageName:(NSString *)imageName Title:(NSString *)title target:(id) traget action:(SEL)action
{
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = fram;
    [button setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [button setTitle:title forState:UIControlStateNormal];
    [button addTarget:traget action:action forControlEvents:UIControlEventTouchUpInside];
    return button;
}
@end
