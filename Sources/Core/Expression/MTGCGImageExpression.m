#import "MTGCGImageExpression.h"

@interface MTGCGImageExpression ()

@property (nonatomic, readonly) CGImageRef image;

@end

@implementation MTGCGImageExpression

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

#pragma mark - MTGExpression

- (MTGTexture *)evaluate {
    return nil;
}

@end
