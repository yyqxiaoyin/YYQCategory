//
//  UIScrollView+YYQExtension.h
//  Pods-YYQCategory_Example
//
//  Created by Mopon on 2017/10/18.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (YYQExtension)

/**
 在iOS 11下是否去掉scrollview的额外的内边距 默认为YES
 */
@property (nonatomic, assign) BOOL isContentInsetAdjustmentNever;

@end
