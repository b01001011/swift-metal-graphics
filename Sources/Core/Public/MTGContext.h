#import "MTGImage.h"

#import <CoreGraphics/CoreGraphics.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MTGContext : NSObject

- (CGImageRef _Nullable)createCGImage:(MTGImage *)image
                             fromRect:(CGRect)fromRect CF_RETURNS_RETAINED;

@end

NS_ASSUME_NONNULL_END
