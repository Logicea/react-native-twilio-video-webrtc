//
//  RCTTWLocalSharingViewManager.h
//  Logicea
//
//  Created by Petros Sfikakis on 15/12/17.
//
//

#import "RCTTWLocalSharingViewManager.h"

#import "RCTTWVideoModule.h"

@interface RCTTWLocalSharingViewManager()
@end

@implementation RCTTWLocalSharingViewManager

RCT_EXPORT_MODULE()

- (UIView *)view {
  UIView *container = [[UIView alloc] init];
  UIView *inner = [[UIView alloc] init];
  inner.contentMode = UIViewContentModeScaleAspectFill;
  [container addSubview:inner];
  return container;
}

RCT_CUSTOM_VIEW_PROPERTY(enabled, BOOL, UIView) {
  if (json) {
    RCTTWVideoModule *videoModule = [self.bridge moduleForName:@"TWVideoModule"];
    BOOL isEnabled = [RCTConvert BOOL:json];

    if (isEnabled) {
      [videoModule addLocalSharingView:view.subviews[0]];
    } else {
      [videoModule removeLocalView:view.subviews[0]];
    }
  }
}

@end
