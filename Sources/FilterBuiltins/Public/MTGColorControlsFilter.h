#import "MTGFilter.h"
#import "MTGImage.h"

NS_ASSUME_NONNULL_BEGIN

@protocol MTGColorControls

@property (nonatomic, retain, nullable) MTGImage *inputImage;
@property (nonatomic) float saturation;
@property (nonatomic) float brightness;
@property (nonatomic) float contrast;

@end

@interface MTGColorControlsFilter : MTGFilter <MTGColorControls>

@end

NS_ASSUME_NONNULL_END
