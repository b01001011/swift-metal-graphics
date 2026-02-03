#import "MTGColorControlsFilter.h"

@implementation MTGColorControlsFilter

@synthesize inputImage = _inputImage;
@synthesize saturation = _saturation;
@synthesize brightness = _brightness;
@synthesize contrast = _contrast;

- (MTGImage *)outputImage {
    if(!_inputImage) {
        return nil;
    }

    MTGRenderPlanExpression *expression = [[MTGRenderPlanExpression alloc] initWithRenderPlan: [MTGRenderPlan new]];
    return [[MTGImage alloc] initWithExpression:expression];
}

@end
