#import "MTGImage.h"

#import <CoreImage/CoreImage.h>

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

    CGImageRef image = CGImageSourceCreateImageAtIndex(source, 0, nil);

    CFRelease(source);

    if(!image) {
        return nil;
    }
    
    self = [super init];
    
    if(self) {

    }
    
    return self;
}

@end
