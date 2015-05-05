//
//  TCClick.h
//  TCClick
//
//  Created by YongQing Gu on 7/31/12.
//  Copyright (c) 2012 TrueColor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TCClick : NSObject{
  NSString* channel;
  NSString* uploadUrl;
}
@property(nonatomic, retain) NSString* channel;
@property(nonatomic, retain) NSString* uploadUrl;
+ (void) start:(NSString*) uploadUrl channel:(NSString*) channel;
+ (NSString*) udid;
+ (TCClick*) sharedInstance;
+ (bool) isDeviceJailbroken;


// 记录发生了某一个事件，等同于 event:name param:name value:name
+ (void)event:(NSString *)name;
// 记录发生了某一个事件，等同于 event:name param:name value:value
+ (void)event:(NSString *)name value:(NSString*)value;
+ (void)event:(NSString *)name param:(NSString *)param value:(NSString*)value;
@end


@interface TCClickDevice : NSObject
+ (NSString*) getUDID;
+ (NSString*) getModel;
+ (NSString*) getCarrier;
+ (NSString*) getResolution;
+ (NSString*) getNetwork;
+ (bool) isJailbroken;
@end

