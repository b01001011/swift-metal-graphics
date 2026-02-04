#include <simd/simd.h>

struct MTGColorMatrix {
    matrix_float4x4 matrix;
    vector_float4 bias;
};
typedef struct MTGColorMatrix MTGColorMatrix;
