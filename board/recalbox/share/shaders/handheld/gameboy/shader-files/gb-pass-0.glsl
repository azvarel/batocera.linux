// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying 
#define COMPAT_ATTRIBUTE attribute 
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec2 _one_texel;
COMPAT_VARYING     vec2 _dot_size;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
float _placeholder29;
};
struct prev_0 {
float _placeholder33;
};
struct prev_1 {
float _placeholder37;
};
struct prev_2 {
float _placeholder41;
};
struct prev_3 {
float _placeholder45;
};
struct prev_4 {
float _placeholder49;
};
struct prev_5 {
float _placeholder53;
};
struct prev_6 {
float _placeholder57;
};
struct matrix_data {
    vec2 _dot_size;
    vec2 _one_texel;
};
vec4 _oPosition1;
float _TMP3;
matrix_data _oMatrixData1;
float _TMP2;
input_dummy _IN1;
vec4 _r0011;
float _x0013;
float _x0015;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _oTexCoord;
    matrix_data _TMP6;
    vec2 _TMP7;
    _r0011 = VertexCoord.x*MVPMatrix[0];
    _r0011 = _r0011 + VertexCoord.y*MVPMatrix[1];
    _r0011 = _r0011 + VertexCoord.z*MVPMatrix[2];
    _r0011 = _r0011 + VertexCoord.w*MVPMatrix[3];
    _x0013 = OutputSize.y/InputSize.y;
    _TMP2 = floor(_x0013);
    _TMP7 = OutputSize/(InputSize*_TMP2);
    _oPosition1 = _r0011/vec4(_TMP7.x, _TMP7.y, 1.00000000E+00, 1.00000000E+00);
    _oTexCoord = TexCoord.xy + 5.00000000E-01/OutputSize;
    _x0015 = OutputSize.y/InputSize.y;
    _TMP3 = floor(_x0015);
    _TMP6._dot_size = vec2(float((1.00000000E+00/TextureSize).x), float((1.00000000E+00/TextureSize).y));
    _TMP6._one_texel = vec2(float((1.00000000E+00/(TextureSize*_TMP3)).x), float((1.00000000E+00/(TextureSize*_TMP3)).y));
    _oMatrixData1._dot_size = _TMP6._dot_size;
    _oMatrixData1._one_texel = _TMP6._one_texel;
    gl_Position = _oPosition1;
    TEX0.xy = _oTexCoord;
    TEX1.xy = _TMP6._dot_size;
    TEX2.xy = _TMP6._one_texel;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec2 _one_texel;
COMPAT_VARYING     vec2 _dot_size;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
float _placeholder43;
};
struct prev_0 {
float _placeholder47;
};
struct prev_1 {
float _placeholder51;
};
struct prev_2 {
float _placeholder55;
};
struct prev_3 {
float _placeholder59;
};
struct prev_4 {
float _placeholder63;
};
struct prev_5 {
float _placeholder67;
};
struct prev_6 {
float _placeholder71;
};
struct matrix_data {
    vec2 _dot_size;
    vec2 _one_texel;
};
vec4 _ret_0;
vec4 _TMP25;
vec3 _TMP23;
vec4 _TMP22;
vec3 _TMP20;
vec4 _TMP19;
vec3 _TMP17;
vec4 _TMP16;
vec3 _TMP14;
vec4 _TMP13;
vec3 _TMP11;
vec4 _TMP10;
vec3 _TMP8;
vec4 _TMP7;
vec3 _TMP6;
vec4 _TMP5;
vec3 _TMP4;
vec4 _TMP3;
bool _TMP2;
float _TMP0;
float _TMP29;
float _TMP28;
float _TMP27;
float _TMP26;
input_dummy _IN1;
prev_0 _PREV7;
prev_1 _PREV11;
prev_2 _PREV21;
prev_3 _PREV31;
prev_4 _PREV41;
prev_5 _PREV51;
prev_6 _PREV61;
uniform sampler2D COLOR_PALETTE;
float _b0042;
float _c0042;
float _a0044;
float _b0050;
float _c0050;
float _a0052;
bvec2 _a0058;
vec3 _a0062;
vec3 _a0066;
vec3 _a0070;
vec3 _a0074;
vec3 _a0078;
vec3 _a0082;
vec3 _a0086;
vec3 _a0090;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
 
uniform sampler2D Texture;
uniform sampler2D Prev6Texture;
uniform sampler2D Prev5Texture;
uniform sampler2D Prev4Texture;
uniform sampler2D Prev3Texture;
uniform sampler2D Prev2Texture;
uniform sampler2D Prev1Texture;
uniform sampler2D PrevTexture;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    int _is_on_dot;
    vec3 _input_dummy_rgb;
    vec4 _out_color;
    _b0042 = float(TEX1.x);
    _a0044 = TEX0.x/_b0042;
    _TMP26 = abs(_a0044);
    _TMP27 = fract(_TMP26);
    _TMP28 = abs(_b0042);
    _c0042 = _TMP27*_TMP28;
    if (TEX0.x < 0.00000000E+00) { 
        _TMP29 = -_c0042;
    } else {
        _TMP29 = _c0042;
    } 
    _TMP0 = _TMP29;
    _b0050 = float(TEX1.y);
    _a0052 = TEX0.y/_b0050;
    _TMP26 = abs(_a0052);
    _TMP27 = fract(_TMP26);
    _TMP28 = abs(_b0050);
    _c0050 = _TMP27*_TMP28;
    if (TEX0.y < 0.00000000E+00) { 
        _TMP29 = -_c0050;
    } else {
        _TMP29 = _c0050;
    } 
    _a0058 = bvec2(bool(int((_TMP0 > float(TEX2.x)))), bool(int((_TMP29 > float(TEX2.y)))));
    _TMP2 = _a0058.x && _a0058.y;
    _is_on_dot = int(_TMP2);
    _TMP3 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _a0062 = 1.00000000E+00 - _TMP3.xyz;
    _TMP4 = abs(_a0062);
    _input_dummy_rgb = vec3(float(_TMP4.x), float(_TMP4.y), float(_TMP4.z));
    _TMP5 = COMPAT_TEXTURE(PrevTexture, TEX0.xy);
    _a0066 = 1.00000000E+00 - _TMP5.xyz;
    _TMP6 = abs(_a0066);
    _input_dummy_rgb = vec3(float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP6 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*3.33000004E-01).x), float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP6 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*3.33000004E-01).y), float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP6 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*3.33000004E-01).z));
    _TMP7 = COMPAT_TEXTURE(Prev1Texture, TEX0.xy);
    _a0070 = 1.00000000E+00 - _TMP7.xyz;
    _TMP8 = abs(_a0070);
    _input_dummy_rgb = vec3(float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP8 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*1.10889003E-01).x), float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP8 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*1.10889003E-01).y), float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP8 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*1.10889003E-01).z));
    _TMP10 = COMPAT_TEXTURE(Prev2Texture, TEX0.xy);
    _a0074 = 1.00000000E+00 - _TMP10.xyz;
    _TMP11 = abs(_a0074);
    _input_dummy_rgb = vec3(float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP11 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*3.69260386E-02).x), float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP11 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*3.69260386E-02).y), float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP11 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*3.69260386E-02).z));
    _TMP13 = COMPAT_TEXTURE(Prev3Texture, TEX0.xy);
    _a0078 = 1.00000000E+00 - _TMP13.xyz;
    _TMP14 = abs(_a0078);
    _input_dummy_rgb = vec3(float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP14 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*1.22963712E-02).x), float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP14 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*1.22963712E-02).y), float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP14 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*1.22963712E-02).z));
    _TMP16 = COMPAT_TEXTURE(Prev4Texture, TEX0.xy);
    _a0082 = 1.00000000E+00 - _TMP16.xyz;
    _TMP17 = abs(_a0082);
    _input_dummy_rgb = vec3(float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP17 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*4.09469148E-03).x), float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP17 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*4.09469148E-03).y), float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP17 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*4.09469148E-03).z));
    _TMP19 = COMPAT_TEXTURE(Prev5Texture, TEX0.xy);
    _a0086 = 1.00000000E+00 - _TMP19.xyz;
    _TMP20 = abs(_a0086);
    _input_dummy_rgb = vec3(float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP20 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*1.36353227E-03).x), float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP20 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*1.36353227E-03).y), float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP20 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*1.36353227E-03).z));
    _TMP22 = COMPAT_TEXTURE(Prev6Texture, TEX0.xy);
    _a0090 = 1.00000000E+00 - _TMP22.xyz;
    _TMP23 = abs(_a0090);
    _input_dummy_rgb = vec3(float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP23 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*4.54056280E-04).x), float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP23 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*4.54056280E-04).y), float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP23 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*4.54056280E-04).z));
    _TMP25 = COMPAT_TEXTURE(COLOR_PALETTE, vec2( 7.50000000E-01, 5.00000000E-01));
    _out_color = vec4(float(_TMP25.x), float(_TMP25.y), float(_TMP25.z), float((float((_input_dummy_rgb.x + _input_dummy_rgb.y + _input_dummy_rgb.z))/3.00000000E+00 + float((float(_is_on_dot)*1.00000001E-01)))));
    _out_color.w = _out_color.w*float(_is_on_dot);
    _ret_0 = vec4(float(_out_color.x), float(_out_color.y), float(_out_color.z), float(_out_color.w));
    FragColor = _ret_0;
    return;
} 
#endif
