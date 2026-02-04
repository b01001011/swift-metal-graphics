#import "MTGColor.h"

@implementation MTGColor

- (instancetype)initWithRed:(float)red
                      green:(float)green
                       blue:(float)blue
                      alpha:(float)alpha {
    self = [super init];
    if(self) {
        _red = red;
        _green = green;
        _blue = blue;
        _alpha = alpha;
    }
    return self;
}

+ (MTGColor *)white {
    return [[MTGColor alloc] initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
}

+ (simd_float3)lumaCoefficient {
    return (simd_float3){0.2126f, 0.7152f, 0.0722f}; // ITU-R 709
}

@end
