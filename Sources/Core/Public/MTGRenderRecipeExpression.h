#import "MTGExpression.h"
#import "MTGRenderRecipe.h"

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

__attribute__((objc_subclassing_restricted))
@interface MTGRenderRecipeExpression : NSObject <MTGExpression>

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)initWithRenderRecipe:(MTGRenderRecipe *)renderRecipe NS_DESIGNATED_INITIALIZER;

@end

NS_ASSUME_NONNULL_END
