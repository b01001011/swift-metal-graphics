#import "MTGImage.h"
#import "MTGCGImageExpression.h"

#import <CoreImage/CoreImage.h>

@interface MTGImage ()

@property (nonatomic, strong, readonly) id<MTGExpression> expression;

@end

@implementation MTGImage

- (instancetype)initWithExpression:(id<MTGExpression>)expression {
    self = [super init];
    
    if(self) {
        _expression = [expression copyWithZone:nil];
    }
    
    return self;
}

@end
