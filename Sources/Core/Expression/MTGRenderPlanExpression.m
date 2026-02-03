#import "MTGRenderPlanExpression.h"

@interface MTGRenderPlanExpression ()

@property (nonatomic, strong, readonly) MTGRenderPlan *renderPlan;

@end

@implementation MTGRenderPlanExpression

- (instancetype)initWithRenderPlan:(MTGRenderPlan *)renderPlan {
    self = [super init];
    
    if(self) {
        _renderPlan = renderPlan;
    }
    
    return self;
}

- (id)copyWithZone:(NSZone *)zone {
    return self;
}

#pragma mark - MTGExpression

- (MTGTexture *)evaluate {
    return nil;
}

@end
