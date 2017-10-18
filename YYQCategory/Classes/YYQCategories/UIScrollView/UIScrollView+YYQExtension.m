//
//  UIScrollView+YYQExtension.m
//  Pods-YYQCategory_Example
//
//  Created by Mopon on 2017/10/18.
//

#import "UIScrollView+YYQExtension.h"
#import <objc/runtime.h>
#import "NSObject+YYQExtension.h"

static const void * kIsContentInsetAdjustmentNeverKey = "isContentInsetAdjustmentNeverKey";

@implementation UIScrollView (YYQExtension)

+ (void)load{
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [self swizzleInstanceMethod:@selector(initWithFrame:) with:@selector(swizzleInitWithFrame:)];
    });
}

- (void)setIsContentInsetAdjustmentNever:(BOOL)isContentInsetAdjustmentNever{
    NSString *version = [UIDevice currentDevice].systemVersion;
    if (version.doubleValue >= 11.0) {
        if (isContentInsetAdjustmentNever) {
            if (@available(iOS 11.0, *)) {
                self.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
            }
        }else{
            self.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentAutomatic;
        }
    }
    objc_setAssociatedObject(self, kIsContentInsetAdjustmentNeverKey, [NSNumber numberWithBool:isContentInsetAdjustmentNever], OBJC_ASSOCIATION_ASSIGN);
}

- (BOOL)isContentInsetAdjustmentNever{
    return [objc_getAssociatedObject(self, kIsContentInsetAdjustmentNeverKey) boolValue];
}

- (instancetype)swizzleInitWithFrame:(CGRect)frame{
    
    UIScrollView * obj= (UIScrollView *)[self swizzleInitWithFrame:frame];
    if (obj) {
        self.isContentInsetAdjustmentNever = YES;
    }
    return obj;
    
}

@end
