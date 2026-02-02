#import <Metal/Metal.h>

NS_ASSUME_NONNULL_BEGIN

__attribute__((objc_subclassing_restricted))
@interface MTGRenderer : NSObject

@property (readonly) MTLCommandBufferStatus commandBufferStatus;

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)initWithCommandBuffer:(id<MTLCommandBuffer>)commandBuffer NS_DESIGNATED_INITIALIZER;

@end

NS_ASSUME_NONNULL_END
