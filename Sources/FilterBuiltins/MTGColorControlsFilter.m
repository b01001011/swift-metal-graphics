#import "MTGColorControlsFilter.h"

@import Kernel;

@interface MTGColorControlsFilter ()

@property (nonatomic, assign) MTGColorMatrix colorMatrix;

@end

@implementation MTGColorControlsFilter

@synthesize inputImage = _inputImage;
@synthesize saturation = _saturation;
@synthesize brightness = _brightness;
@synthesize contrast = _contrast;

- (instancetype)init {
    self = [super init];
    if(self) {
        _saturation = 1.0f;
        _brightness = 0.0f;
        _contrast   = 1.0f;
        _colorMatrix = (MTGColorMatrix){
            .matrix = (matrix_float4x4){
                (simd_float4){1,0,0,0},
                (simd_float4){0,1,0,0},
                (simd_float4){0,0,1,0},
                (simd_float4){0,0,0,1}
            },
            .bias = (simd_float4){0,0,0,0}
        };
    }
    return self;
}

- (MTGImage *)outputImage {
    if(!_inputImage) {
        return nil;
    }

    MTGRenderPipelineKernel *kernel = [[MTGRenderPipelineKernel alloc] initWithVertexFunctionDescriptor:[[MTGFunctionDescriptor alloc] initWithName:@"name"]
                                                                             fragmentFunctionDescriptor:[[MTGFunctionDescriptor alloc] initWithName:@"name"]];
    MTGRenderRecipe *renderRecipe = [[MTGRenderRecipe alloc] initWithKernel:kernel]; // geometry, actions
    MTGRenderRecipeExpression *expression = [[MTGRenderRecipeExpression alloc] initWithRenderRecipe: renderRecipe];
    
    return [[MTGImage alloc] initWithExpression:expression];
}

- (void)setSaturation:(float)saturation {
    _saturation = saturation;
    [self evaluateColorMatrix];
}

- (void)setBrightness:(float)brightness {
    _brightness = brightness;
    [self evaluateColorMatrix];
}

- (void)setContrast:(float)contrast {
    _contrast = contrast;
    [self evaluateColorMatrix];
}

- (void)evaluateColorMatrix {
    float s = _saturation;
    float b = _brightness;
    float c = _contrast;
    
    simd_float3 lumaCoefficient = [MTGColor lumaCoefficient];

    float sr = (1 - s) * lumaCoefficient.r;
    float sg = (1 - s) * lumaCoefficient.g;
    float sb = (1 - s) * lumaCoefficient.b;
    
    _colorMatrix = (MTGColorMatrix){
        .matrix = (matrix_float4x4){
            (simd_float4){1,0,0,0},
            (simd_float4){0,1,0,0},
            (simd_float4){0,0,1,0},
            (simd_float4){0,0,0,1}
        },
        .bias = (simd_float4){0,0,0,0}
    };
    
    _colorMatrix.matrix.columns[0][0] = (sr + s) * c;
    _colorMatrix.matrix.columns[1][0] = sr * c;
    _colorMatrix.matrix.columns[2][0] = sr * c;
    _colorMatrix.matrix.columns[0][1] = sg * c;
    _colorMatrix.matrix.columns[1][1] = (sg + s) * c;
    _colorMatrix.matrix.columns[2][1] = sg * c;
    _colorMatrix.matrix.columns[0][2] = sb * c;
    _colorMatrix.matrix.columns[1][2] = sb * c;
    _colorMatrix.matrix.columns[2][2] = (sb + s) * c;
    
    _colorMatrix.matrix.columns[3][3] = 1.0f;
    
    float t = (1.0f - c) * 0.5f;

    _colorMatrix.bias[0] = t + b;
    _colorMatrix.bias[1] = t + b;
    _colorMatrix.bias[2] = t + b;
    _colorMatrix.bias[3] = 0.0f;
}

@end
