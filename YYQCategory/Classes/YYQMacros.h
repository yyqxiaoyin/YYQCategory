//
//  YYQMacros.h
//
//  Created by 尹永奇 on 16/6/15.
//  Copyright © 2016年 尹永奇. All rights reserved.
//
//

#ifndef YYQMacros_h
#define YYQMacros_h


#endif /* YYQMacros_h */

//屏幕高度
#define Screen_Height      [[UIScreen mainScreen] bounds].size.height
//屏幕宽度
#define Screen_Width       [[UIScreen mainScreen] bounds].size.width

//适配不同屏幕尺寸
#define kScreenWidthRatio  (Screen_Width / 375.0)
#define kScreenHeightRatio (Screen_Height / 667.0)
#define AdaptedWidth(x)  ceilf((x) * kScreenWidthRatio)
#define AdaptedHeight(x) ceilf((x) * kScreenHeightRatio)
#define kFontSize(R)     [UIFont systemFontOfSize:AdaptedWidth(R)]
#define kBlodFontSize(R) [UIFont boldSystemFontOfSize:AdaptedWidth(R)]
#define SINGLE_LINE_WIDTH           (1 / [UIScreen mainScreen].scale)
#define SINGLE_LINE_ADJUST_OFFSET   ((1 / [UIScreen mainScreen].scale) / 2)

//适配不同屏幕尺寸的默认字体
#define DEFAULT_FONT(size) kFontSize(size)

//是否为iOS7
#define iOS7 ([[UIDevice currentDevice].systemVersion doubleValue] >= 7.0)
//是否为iOS8及以上系统
#define iOS8 ([[UIDevice currentDevice].systemVersion doubleValue] >= 8.0)

//RGB颜色
#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define RGB(r,g,b) RGBA(r,g,b,1.0f)

//日志打印
#ifdef DEBUG
#   define QLog(fmt, ...) NSLog((@"%s [%d 行] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
#   define QLog(...)
#endif

