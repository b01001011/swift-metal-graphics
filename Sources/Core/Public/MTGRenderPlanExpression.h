#import "MTGExpression.h"
#import "MTGRenderPlan.h"

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

__attribute__((objc_subclassing_restricted))
@interface MTGRenderPlanExpression : NSObject <MTGExpression>

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)initWithRenderPlan:(MTGRenderPlan *)renderPlan NS_DESIGNATED_INITIALIZER;

@end

NS_ASSUME_NONNULL_END
