//
//  UIView+QRFindInResponderChain.h
//  Pods
//
//  Created by Taro Kobayashi on 17/02/2014.
//
//
#import <UIKit/UIKit.h>

@interface UIView (QRFindInResponderChain)

- (id)findInResponderChain:(Class)klass;

@end
