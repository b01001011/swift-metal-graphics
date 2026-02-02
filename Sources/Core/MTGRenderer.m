#import "MTGRenderer.h"

@interface MTGRenderer ()

@property (nonatomic, readonly, strong) id<MTLCommandBuffer> commandBuffer;

@end

@implementation MTGRenderer

- (instancetype)initWithCommandBuffer:(id<MTLCommandBuffer>)commandBuffer {
    self = [super init];
    
    if(self) {
        _commandBuffer = commandBuffer;
    }
    
    return self;
}

@end
