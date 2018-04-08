//
//  BGNativeModuleExample.m
//  BGNativeModuleExample
//
//  Created by yuhongliang on 08/04/2018.
//  Copyright © 2018 yuhongliang. All rights reserved.
//

#import "BGNativeModuleExample.h"

@implementation BGNativeModuleExample

RCT_EXPORT_MODULE(BGNativeModuleExample);

RCT_EXPORT_METHOD(testPrint:(NSString *)name info:(NSDictionary *)info) {
    RCTLogInfo(@"%@: %@", name, info);
}

RCT_EXPORT_METHOD(getNativeClass:(RCTResponseSenderBlock)callback) {
    callback(@[NSStringFromClass([self class])]);
}

@end
