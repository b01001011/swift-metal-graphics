#import "MTGImage.h"
#import "Expression/MTGExpression.h"
#import "Expression/MTGCGImageExpression.h"

#import <CoreImage/CoreImage.h>
#import <CoreImage/CIFilterBuiltins.h>

@interface MTGImage ()

@property (nonatomic, strong, readonly) id<MTGExpression> expression;

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
    
    self = [self initWithExpression: [[MTGCGImageExpression alloc] initWithCGImage:cgImage]];
    
    CGImageRelease(cgImage);
    
    return self;
}

- (instancetype)initWithExpression:(MTGCGImageExpression *)expression {
    self = [super init];
    
    if(self) {
        _expression = [expression copyWithZone:nil];
    }
    
    return self;
}

@end
