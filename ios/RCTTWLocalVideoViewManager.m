//
//  RCTTWLocalVideoViewManager.m
//  Black
//
//  Created by Martín Fernández on 6/13/17.
//
//

#import "RCTTWLocalVideoViewManager.h"

#import "RCTTWVideoModule.h"

@interface RCTTWLocalVideoViewManager()
@end

@implementation RCTTWLocalVideoViewManager

RCT_EXPORT_MODULE()

- (UIView *)view {
  UIView *container = [[UIView alloc] init];
  TVIVideoView *inner = [[TVIVideoView alloc] init];
  inner.frame = CGRectZero;
  inner.tag = 1;
  UIView *sharingView = [[UIView alloc] init];
  sharingView.contentMode = UIViewContentModeScaleAspectFill;
  inner.frame = container.frame;
  sharing.tag = 2;
  [container addSubview:sharingView];
  return container;
}

RCT_CUSTOM_VIEW_PROPERTY(enabled, BOOL, TVIVideoView) {
  if (json) {
    RCTTWVideoModule *videoModule = [self.bridge moduleForName:@"TWVideoModule"];
    BOOL isEnabled = [RCTConvert BOOL:json];

    if (isEnabled) {
      [videoModule addLocalView:[view viewWithTag:2] rendererView:[view viewWithTag:1]];
    } else {
      [videoModule removeLocalView:[view viewWithTag:1]];
    }
  }
}

@end
