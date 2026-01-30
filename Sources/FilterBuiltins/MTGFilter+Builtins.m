#import "MTGColorControlsFilter.h"
#import "MTGFilter.h"

@implementation MTGFilter (Builtins)

+ (MTGFilter<MTGColorControls> *)colorControlsFilter {
    return [MTGColorControlsFilter new];
}

@end
