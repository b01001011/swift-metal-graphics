#import "MTGTexture.h"

#import <CoreImage/CoreImage.h>
#import <CoreImage/CIFilterBuiltins.h>


@implementation MTGTexture

- (instancetype)initWithTexture:(id<MTLTexture>)texture {
    self  = [super init];
    if(self) {
        _texture = texture;
    }
    
}
    

@end
