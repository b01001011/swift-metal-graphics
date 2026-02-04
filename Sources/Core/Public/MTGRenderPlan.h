#import <Metal/Metal.h>
#import <Foundation/Foundation.h>

@import Kernel;

NS_ASSUME_NONNULL_BEGIN

@interface MTGRenderPlan : NSObject

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)initWithKernel:(MTGRenderPipelineKernel *)kernel NS_DESIGNATED_INITIALIZER;
    
@end

NS_ASSUME_NONNULL_END
