//
//  MPLabel.h
//  MoponChinaFilm
//
//  Created by Mopon on 2016/12/1.
//  Copyright © 2016年 Mopon. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum
{
    VerticalAlignmentTop = 0, // default
    VerticalAlignmentMiddle,
    VerticalAlignmentBottom,
} VerticalAlignment;
@interface MPLabel : UILabel

@property (nonatomic ,assign) VerticalAlignment verticalAlignment;

@end
