#import "MTGRenderRecipeExpression.h"

@interface MTGRenderRecipeExpression ()

@property (nonatomic, strong, readonly) MTGRenderRecipe *renderRecipe;

@end

@implementation MTGRenderRecipeExpression

- (instancetype)initWithRenderRecipe:(MTGRenderRecipe *)renderRecipe {
    self = [super init];
    
    if(self) {
        _renderRecipe = renderRecipe;
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
