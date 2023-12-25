#import "StagingLoopPlugin.h"
#if __has_include(<staging_loop/staging_loop-Swift.h>)
#import <staging_loop/staging_loop-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "staging_loop-Swift.h"
#endif

@implementation StagingLoopPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftStagingLoopPlugin registerWithRegistrar:registrar];
}
@end
