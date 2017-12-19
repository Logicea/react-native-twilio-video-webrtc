//
//  RCTTWVideoModule.h
//  Black
//
//  Created by Martín Fernández on 6/13/17.
//
//

#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

#import <TwilioVideo/TwilioVideo.h>
#import <UIKit/UIKit.h>

@interface RCTTWVideoModule : RCTEventEmitter <RCTBridgeModule>

- (void)addLocalSharingView:(UIView*)sharingView;
- (void)removeLocalSharingView;
- (void)addLocalView:(TVIVideoView *)view;
- (void)removeLocalView:(TVIVideoView *)view;
- (void)addParticipantView:(TVIVideoView *)view identity:(NSString *)identity trackId:(NSString *)trackId;

@end
