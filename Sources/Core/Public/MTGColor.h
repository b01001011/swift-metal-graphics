#import <Foundation/Foundation.h>
#import <simd/simd.h>

NS_ASSUME_NONNULL_BEGIN

@interface MTGColor : NSObject

@property (nonatomic, assign) float red;
@property (nonatomic, assign) float green;
@property (nonatomic, assign) float blue;
@property (nonatomic, assign) float alpha;

- (instancetype)initWithRed:(float)red
                      green:(float)green
                       blue:(float)blue
                      alpha:(float)alpha NS_DESIGNATED_INITIALIZER;

+ (MTGColor *)white NS_SWIFT_NAME(whiteColor);
+ (simd_float3)lumaCoefficient;

@end

NS_ASSUME_NONNULL_END
