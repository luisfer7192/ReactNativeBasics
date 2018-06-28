//
//  CustomViewManager.m
//  AwesomeProject
//
//  Created by Carlos Thurber on 27/6/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import <React/RCTViewManager.h>

@interface RCT_EXTERN_MODULE(RCTCustomViewManager, RCTViewManager)
RCT_EXPORT_VIEW_PROPERTY(message, NSString)
RCT_EXPORT_VIEW_PROPERTY(onIncreaseValue, RCTBubblingEventBlock)
@end
