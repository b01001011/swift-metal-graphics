#import "MTGFilter+Builtins.h"

@implementation MTGFilter (Builtins)

+ (MTGFilter<MTGColorControls> *)colorControlsFilter {
    return [MTGColorControlsFilter new];
}

@end
