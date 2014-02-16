//
//  UIView+QRFindInResponderChain.m
//  Pods
//
//  Created by Taro Kobayashi on 17/02/2014.
//
//

#import "UIView+QRFindInResponderChain.h"

@implementation UIView (QRFindInResponderChain)

- (id)findInResponderChain:(Class)klass
{
    UIView *view = self;
    while (view) {
        id responder = [view nextResponder];
        if ([responder isKindOfClass:klass])
        {
            return responder;
        }
        view = view.superview;
    }
    
    return nil;
}

@end
