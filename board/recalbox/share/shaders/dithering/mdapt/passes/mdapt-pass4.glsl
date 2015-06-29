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
COMPAT_VARYING     vec2 VARt1;
COMPAT_VARYING     vec2 _texCoord1;
COMPAT_VARYING     vec4 _position1;
struct prev {
    vec2 _video_size1;
    vec2 _texture_size1;
float _placeholder24;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec4 _position1;
    vec2 _texCoord1;
    vec2 VARt1;
};
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0006;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    out_vertex _OUT;
    _r0006 = VertexCoord.x*MVPMatrix[0];
    _r0006 = _r0006 + VertexCoord.y*MVPMatrix[1];
    _r0006 = _r0006 + VertexCoord.z*MVPMatrix[2];
    _r0006 = _r0006 + VertexCoord.w*MVPMatrix[3];
    _OUT.VARt1 = 1.00000000E+00/TextureSize;
    _ret_0._position1 = _r0006;
    _ret_0._texCoord1 = TexCoord.xy;
    VARt1 = _OUT.VARt1;
    gl_Position = _r0006;
    TEX0.xy = TexCoord.xy;
    return;
    TEX0.xy = _ret_0._texCoord1;
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
COMPAT_VARYING     vec2 VARt1;
COMPAT_VARYING     vec2 _texCoord;
struct prev {
    vec2 _video_size;
    vec2 _texture_size;
float _placeholder28;
};
struct input_dummy {
    vec2 _video_size1;
    vec2 _texture_size1;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec2 _texCoord;
    vec2 VARt1;
};
vec3 _TMP38;
float _TMP47;
float _TMP46;
float _TMP45;
float _TMP44;
float _TMP43;
float _TMP42;
float _TMP41;
vec4 _TMP25;
vec4 _TMP24;
vec4 _TMP23;
vec4 _TMP22;
vec4 _TMP21;
vec4 _TMP20;
vec4 _TMP19;
vec4 _TMP18;
float _TMP17;
float _TMP16;
float _TMP15;
vec4 _TMP10;
vec4 _TMP9;
vec2 _TMP40;
vec2 _TMP39;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
out_vertex _VAR1;
uniform sampler2D Texture;
prev _PASSPREV51;
vec2 _c0057;
vec2 _c0059;
vec2 _c0061;
vec2 _c0063;
vec2 _c0065;
vec2 _c0067;
vec2 _TMP68;
vec2 _TMP76;
vec2 _TMP80;
vec2 _c0085;
vec2 _c0087;
bool _TMP88;
bvec3 _a0091;
bool _TMP92;
bvec3 _a0095;
bool _TMP96;
bvec3 _a0099;
bool _TMP100;
bvec3 _a0103;
float _TMP104;
float _TMP108;
float _TMP112;
float _TMP116;
vec2 _c0127;
vec2 _c0129;
vec2 _c0131;
vec2 _c0133;
vec2 _c0135;
vec2 _c0137;
vec2 _c0139;
vec2 _c0141;
float _TMP142;
float _TMP146;
float _TMP150;
float _TMP154;
bool _TMP158;
bvec3 _a0161;
float _TMP162;
float _b0163;
bool _TMP166;
bvec3 _a0169;
float _TMP170;
float _b0171;
bool _TMP174;
bvec3 _a0177;
float _TMP178;
float _b0179;
bool _TMP182;
bvec3 _a0185;
float _TMP186;
float _b0187;
float _TMP190;
COMPAT_VARYING vec4 TEX0;
 
uniform sampler2D PassPrev5Texture;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec4 _C;
    float _prCB;
    vec3 _fCB;
    float _eqCL1;
    float _eqCR1;
    float _eqCU1;
    float _eqCD1;
    float _prSum2;
    _C = COMPAT_TEXTURE(Texture, TEX0.xy);
    _TMP0 = COMPAT_TEXTURE(PassPrev5Texture, TEX0.xy);
    _c0057 = TEX0.xy + vec2( -1.00000000E+00, 0.00000000E+00)*VARt1;
    _TMP1 = COMPAT_TEXTURE(Texture, _c0057);
    _c0059 = TEX0.xy + vec2( -1.00000000E+00, 0.00000000E+00)*VARt1;
    _TMP2 = COMPAT_TEXTURE(PassPrev5Texture, _c0059);
    _c0061 = TEX0.xy + vec2( 1.00000000E+00, 0.00000000E+00)*VARt1;
    _TMP3 = COMPAT_TEXTURE(Texture, _c0061);
    _c0063 = TEX0.xy + vec2( 1.00000000E+00, 0.00000000E+00)*VARt1;
    _TMP4 = COMPAT_TEXTURE(PassPrev5Texture, _c0063);
    _c0065 = TEX0.xy + vec2( 0.00000000E+00, -1.00000000E+00)*VARt1;
    _TMP5 = COMPAT_TEXTURE(Texture, _c0065);
    _c0067 = TEX0.xy + vec2( 0.00000000E+00, 1.00000000E+00)*VARt1;
    _TMP6 = COMPAT_TEXTURE(Texture, _c0067);
    _TMP39 = max(_TMP5.xy, _TMP6.xy);
    _TMP40 = max(_TMP3.xy, _TMP39);
    _TMP68 = max(_TMP1.xy, _TMP40);
    _TMP76 = min(_C.zw, _TMP68);
    _TMP80 = max(_C.xy, _TMP76);
    _c0085 = TEX0.xy + vec2( 0.00000000E+00, -1.00000000E+00)*VARt1;
    _TMP9 = COMPAT_TEXTURE(PassPrev5Texture, _c0085);
    _c0087 = TEX0.xy + vec2( 0.00000000E+00, 1.00000000E+00)*VARt1;
    _TMP10 = COMPAT_TEXTURE(PassPrev5Texture, _c0087);
    _a0091 = bvec3(_TMP0.x == _TMP2.x, _TMP0.y == _TMP2.y, _TMP0.z == _TMP2.z);
    _TMP88 = _a0091.x && _a0091.y && _a0091.z;
    _eqCL1 = float(_TMP88);
    _a0095 = bvec3(_TMP0.x == _TMP4.x, _TMP0.y == _TMP4.y, _TMP0.z == _TMP4.z);
    _TMP92 = _a0095.x && _a0095.y && _a0095.z;
    _eqCR1 = float(_TMP92);
    _a0099 = bvec3(_TMP0.x == _TMP9.x, _TMP0.y == _TMP9.y, _TMP0.z == _TMP9.z);
    _TMP96 = _a0099.x && _a0099.y && _a0099.z;
    _eqCU1 = float(_TMP96);
    _a0103 = bvec3(_TMP0.x == _TMP10.x, _TMP0.y == _TMP10.y, _TMP0.z == _TMP10.z);
    _TMP100 = _a0103.x && _a0103.y && _a0103.z;
    _eqCD1 = float(_TMP100);
    _TMP104 = max(_TMP5.y, _eqCU1);
    _TMP108 = max(_TMP6.y, _eqCD1);
    _TMP112 = max(_TMP1.y, _eqCL1);
    _TMP116 = max(_TMP3.y, _eqCR1);
    _prSum2 = _TMP104 + _TMP108 + _TMP112 + _TMP116;
    _TMP15 = max(_TMP104, _TMP108);
    _TMP16 = max(_TMP116, _TMP15);
    _prCB = max(_TMP112, _TMP16);
    if (_prCB == 0.00000000E+00) { 
        _TMP17 = 1.00000000E+00;
    } else {
        _TMP17 = _prSum2/_prCB;
    } 
    _fCB = (_TMP17*_TMP0.xyz + _TMP104*_TMP9.xyz + _TMP108*_TMP10.xyz + _TMP112*_TMP2.xyz + _TMP116*_TMP4.xyz)/(_TMP17 + _prSum2);
    _c0127 = TEX0.xy + -VARt1;
    _TMP18 = COMPAT_TEXTURE(Texture, _c0127);
    _c0129 = TEX0.xy + -VARt1;
    _TMP19 = COMPAT_TEXTURE(PassPrev5Texture, _c0129);
    _c0131 = TEX0.xy + vec2( 1.00000000E+00, -1.00000000E+00)*VARt1;
    _TMP20 = COMPAT_TEXTURE(Texture, _c0131);
    _c0133 = TEX0.xy + vec2( 1.00000000E+00, -1.00000000E+00)*VARt1;
    _TMP21 = COMPAT_TEXTURE(PassPrev5Texture, _c0133);
    _c0135 = TEX0.xy + vec2( -1.00000000E+00, 1.00000000E+00)*VARt1;
    _TMP22 = COMPAT_TEXTURE(Texture, _c0135);
    _c0137 = TEX0.xy + vec2( -1.00000000E+00, 1.00000000E+00)*VARt1;
    _TMP23 = COMPAT_TEXTURE(PassPrev5Texture, _c0137);
    _c0139 = TEX0.xy + VARt1;
    _TMP24 = COMPAT_TEXTURE(Texture, _c0139);
    _c0141 = TEX0.xy + VARt1;
    _TMP25 = COMPAT_TEXTURE(PassPrev5Texture, _c0141);
    _TMP142 = min(_TMP1.y, _eqCL1);
    _TMP146 = min(_TMP3.y, _eqCR1);
    _TMP150 = min(_TMP5.y, _eqCU1);
    _TMP154 = min(_TMP6.y, _eqCD1);
    _a0161 = bvec3(_TMP0.x == _TMP19.x, _TMP0.y == _TMP19.y, _TMP0.z == _TMP19.z);
    _TMP158 = _a0161.x && _a0161.y && _a0161.z;
    _b0163 = float(_TMP158);
    _TMP162 = min(_TMP18.y, _b0163);
    _a0169 = bvec3(_TMP0.x == _TMP21.x, _TMP0.y == _TMP21.y, _TMP0.z == _TMP21.z);
    _TMP166 = _a0169.x && _a0169.y && _a0169.z;
    _b0171 = float(_TMP166);
    _TMP170 = min(_TMP20.y, _b0171);
    _a0177 = bvec3(_TMP0.x == _TMP23.x, _TMP0.y == _TMP23.y, _TMP0.z == _TMP23.z);
    _TMP174 = _a0177.x && _a0177.y && _a0177.z;
    _b0179 = float(_TMP174);
    _TMP178 = min(_TMP22.y, _b0179);
    _a0185 = bvec3(_TMP0.x == _TMP25.x, _TMP0.y == _TMP25.y, _TMP0.z == _TMP25.z);
    _TMP182 = _a0185.x && _a0185.y && _a0185.z;
    _b0187 = float(_TMP182);
    _TMP186 = min(_TMP24.y, _b0187);
    _TMP41 = max(_TMP178, _TMP186);
    _TMP42 = max(_TMP170, _TMP41);
    _TMP43 = max(_TMP162, _TMP42);
    _TMP44 = max(_TMP154, _TMP43);
    _TMP45 = max(_TMP150, _TMP44);
    _TMP46 = max(_TMP146, _TMP45);
    _TMP47 = max(_TMP142, _TMP46);
    _TMP190 = max(_TMP80.y, _TMP47);
    if (_TMP190 >= 0.00000000E+00) { 
        _TMP38 = _TMP0.xyz + _TMP190*(_fCB - _TMP0.xyz);
    } else {
        _TMP38 = _TMP0.xyz;
    } 
    FragColor.xyz = _TMP38;
    return;
} 
#endif
