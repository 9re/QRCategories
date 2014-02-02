//
//  UIView+QRIBBinder.h
//  Pods
//
//  Created by Taro Kobayashi on 02/02/2014.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface QRIBBinder : NSObject
@property (nonatomic, retain) IBOutlet UIView *view;
+ (id)viewFromNibName: (NSString *)nibName bundle: (NSBundle*) bundle;
@end

@interface UIView (QRIBBinder)
+ (id)viewFromNib;
+ (id)viewFromNibInBundle: (NSBundle*) bundle;
@end
