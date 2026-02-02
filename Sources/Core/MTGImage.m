#import "MTGImage.h"
#import "MTGImageExpression.h"

#import <CoreImage/CoreImage.h>
#import <CoreImage/CIFilterBuiltins.h>

@interface MTGImage ()

@property (nonatomic, strong, readonly) MTGImageExpression *expression;

@end

@implementation MTGImage

- (instancetype)initWithContentsOfURL:(NSURL *)URL {
    CGImageSourceRef source = CGImageSourceCreateWithURL((__bridge CFURLRef)URL, nil);
    
    if(!source) {
        return nil;
    }

    if(CGImageSourceGetCount(source) == 0) {
        CFRelease(source);
        return nil;
    }

    CGImageRef cgImage = CGImageSourceCreateImageAtIndex(source, 0, nil);

    CFRelease(source);

    if(!cgImage) {
        return nil;
    }
    
    self = [self initWithExpression: [[MTGImageExpression alloc] initWithCGImage:cgImage]];
    
    CGImageRelease(cgImage);
    
    return self;
}

- (instancetype)initWithExpression:(MTGImageExpression *)expression {
    if (self = [super init]) {
        _expression = [expression copyWithZone:nil];
    }
    return self;
}

@end
