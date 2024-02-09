#import <Foundation/Foundation.h>
#import "VisionCameraBase64Plugin.h"

#import "VisionCameraBase64Plugin-Swift.h"

@implementation Plugins

+ (void)load {
    [FrameProcessorPluginRegistry addFrameProcessorPlugin:@"frameToBase64"
                                          withInitializer:^FrameProcessorPlugin * _Nonnull (VisionCameraProxyHolder * _Nonnull cameraProxy, NSDictionary * _Nullable options) {

        return [[VisionCameraBase64Plugin alloc] initWithProxy:cameraProxy withOptions:options];
    }];
}

@end
