//
//  UIView+QRIBBinder.m
//  Pods
//
//  Created by Taro Kobayashi on 02/02/2014.
//
//

#import "UIView+QRIBBinder.h"

@implementation QRIBBinder

+ (id)viewFromNibName: (NSString *)nibName bundle: (NSBundle*) bundle;
{
    QRIBBinder *binder = [self new];
    [bundle loadNibNamed:nibName owner:binder options:nil];
    return binder.view;
}

@end

@implementation UIView (QRIBBinder)

+ (id)viewFromNib
{
    return [self viewFromNibInBundle: [NSBundle mainBundle]];
}
+ (id)viewFromNibInBundle: (NSBundle*) bundle;
{
    return [QRIBBinder viewFromNibName:NSStringFromClass(self) bundle:bundle];
}

@end
