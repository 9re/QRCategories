//
//  UIView+QRParentViewController.m
//  Pods
//
//  Created by Taro Kobayashi on 02/02/2014.
//
//

#import "UIView+QRParentViewController.h"

@implementation UIView (QRParentViewController)

- (UIViewController *)parentViewController
{
    UIView *view = self;
    while (view) {
        UIResponder *responder = [view nextResponder];
        if ([responder isKindOfClass:[UIViewController class]])
        {
            return (UIViewController *)responder;
        }
        view = view.superview;
    }
    
    return nil;
}

@end
