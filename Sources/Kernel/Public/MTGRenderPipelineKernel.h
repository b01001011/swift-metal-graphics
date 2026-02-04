#import "MTGKernel.h"
#import "MTGFunctionDescriptor.h"

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

__attribute__((objc_subclassing_restricted))
@interface MTGRenderPipelineKernel : NSObject <MTGKernel>

@property (nonatomic, strong, readonly) MTGFunctionDescriptor *vertexFunctionDescriptor;
@property (nonatomic, strong, readonly) MTGFunctionDescriptor *fragmentFunctionDescriptor;

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)initWithVertexFunctionDescriptor:(MTGFunctionDescriptor *)vertex
                      fragmentFunctionDescriptor: (MTGFunctionDescriptor *)fragment;

@end

NS_ASSUME_NONNULL_END
