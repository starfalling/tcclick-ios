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
@end
