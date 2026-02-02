#import "MTGTexture.h"

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol MTGExpression <NSObject, NSCopying>

- (MTGTexture *)evaluate;

@end

NS_ASSUME_NONNULL_END
