//
//  CustomManager.m
//  AwesomeProject
//
//  Created by Carlos Thurber on 27/6/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import <React/RCTViewManager.h>

@interface RCT_EXTERN_MODULE(RCTCustomManager, NSObject)
RCT_EXTERN_METHOD(show:(NSString*)title msg:(NSString*)msg)
@end
