#import "HalopaketPlugin.h"
#import <halopaket/halopaket-Swift.h>

@implementation HalopaketPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftHalopaketPlugin registerWithRegistrar:registrar];
}
@end
