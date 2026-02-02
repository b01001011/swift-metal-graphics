#import "MTGImageExpression.h"

#import <CoreImage/CoreImage.h>
#import <CoreImage/CIFilterBuiltins.h>

@interface MTGImageExpression ()

@property (nonatomic, readonly) CGImageRef image;

@end

@implementation MTGImageExpression

- (instancetype)initWithCGImage:(CGImageRef)cgImage {
    self = [super init];
    
    if(self) {
        _image = CGImageRetain(cgImage);
    }
    
    return self;
}

- (void)dealloc {
    CGImageRelease(_image);
}

- (id)copyWithZone:(NSZone *)zone {
    return self;
}

@end
