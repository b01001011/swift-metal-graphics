#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MTGImage : NSObject

- (instancetype)initWithContentsOfURL:(NSURL *)URL NS_DESIGNATED_INITIALIZER;
    
@end

NS_ASSUME_NONNULL_END
