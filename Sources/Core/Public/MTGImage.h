#import "MTGExpression.h"

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MTGImage : NSObject

- (instancetype)initWithExpression:(id<MTGExpression>)expression NS_DESIGNATED_INITIALIZER;

@end

NS_ASSUME_NONNULL_END
