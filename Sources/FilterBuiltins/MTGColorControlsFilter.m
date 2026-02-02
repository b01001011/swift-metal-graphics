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
    
    return [MTGImage new];
}

@end
