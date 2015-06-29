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
COMPAT_VARYING     vec4 _t7;
COMPAT_VARYING     vec4 _t6;
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord2;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     vec4 _position1;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _position1;
    vec4 _color1;
    vec2 _texCoord2;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
    vec4 _t7;
};
out_vertex _ret_0;
float _TMP1;
input_dummy _IN1;
vec4 _r0005;
vec4 _v0005;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX5;
COMPAT_VARYING vec4 TEX6;
COMPAT_VARYING vec4 TEX7;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    out_vertex _OUT;
    vec2 _ps;
    vec2 _texCoord;
    _v0005 = vec4(float(VertexCoord.x), float(VertexCoord.y), float(VertexCoord.z), float(VertexCoord.w));
    _TMP1 = dot(vec4(float(MVPMatrix[0].x), float(MVPMatrix[0].y), float(MVPMatrix[0].z), float(MVPMatrix[0].w)), vec4(float(_v0005.x), float(_v0005.y), float(_v0005.z), float(_v0005.w)));
    _r0005.x = float(_TMP1);
    _TMP1 = dot(vec4(float(MVPMatrix[1].x), float(MVPMatrix[1].y), float(MVPMatrix[1].z), float(MVPMatrix[1].w)), vec4(float(_v0005.x), float(_v0005.y), float(_v0005.z), float(_v0005.w)));
    _r0005.y = float(_TMP1);
    _TMP1 = dot(vec4(float(MVPMatrix[2].x), float(MVPMatrix[2].y), float(MVPMatrix[2].z), float(MVPMatrix[2].w)), vec4(float(_v0005.x), float(_v0005.y), float(_v0005.z), float(_v0005.w)));
    _r0005.z = float(_TMP1);
    _TMP1 = dot(vec4(float(MVPMatrix[3].x), float(MVPMatrix[3].y), float(MVPMatrix[3].z), float(MVPMatrix[3].w)), vec4(float(_v0005.x), float(_v0005.y), float(_v0005.z), float(_v0005.w)));
    _r0005.w = float(_TMP1);
    _OUT._position1 = vec4(float(_r0005.x), float(_r0005.y), float(_r0005.z), float(_r0005.w));
    _ps = vec2(float((1.00000000E+00/TextureSize.x)), float((1.00000000E+00/TextureSize.y)));
    _texCoord = TexCoord.xy + vec2( 1.00000001E-07, 1.00000001E-07);
    _OUT._t1 = _texCoord.xxxy + vec4(float(-_ps.x), 0.00000000E+00, float(_ps.x), float((-2.00000000E+00*_ps.y)));
    _OUT._t2 = _texCoord.xxxy + vec4(float(-_ps.x), 0.00000000E+00, float(_ps.x), float(-_ps.y));
    _OUT._t3 = _texCoord.xxxy + vec4(float(-_ps.x), 0.00000000E+00, float(_ps.x), 0.00000000E+00);
    _OUT._t4 = _texCoord.xxxy + vec4(float(-_ps.x), 0.00000000E+00, float(_ps.x), float(_ps.y));
    _OUT._t5 = _texCoord.xxxy + vec4(float(-_ps.x), 0.00000000E+00, float(_ps.x), float((2.00000000E+00*_ps.y)));
    _OUT._t6 = _texCoord.xyyy + vec4(float((-2.00000000E+00*_ps.x)), float(-_ps.y), 0.00000000E+00, float(_ps.y));
    _OUT._t7 = _texCoord.xyyy + vec4(float((2.00000000E+00*_ps.x)), float(-_ps.y), 0.00000000E+00, float(_ps.y));
    _ret_0._position1 = _OUT._position1;
    _ret_0._color1 = COLOR;
    _ret_0._texCoord2 = _texCoord;
    _ret_0._t1 = _OUT._t1;
    _ret_0._t2 = _OUT._t2;
    _ret_0._t3 = _OUT._t3;
    _ret_0._t4 = _OUT._t4;
    _ret_0._t5 = _OUT._t5;
    _ret_0._t6 = _OUT._t6;
    _ret_0._t7 = _OUT._t7;
    gl_Position = _OUT._position1;
    COL0 = COLOR;
    TEX0.xy = _texCoord;
    TEX1 = _OUT._t1;
    TEX2 = _OUT._t2;
    TEX3 = _OUT._t3;
    TEX4 = _OUT._t4;
    TEX5 = _OUT._t5;
    TEX6 = _OUT._t6;
    TEX7 = _OUT._t7;
    return;
    COL0 = _ret_0._color1;
    TEX0.xy = _ret_0._texCoord2;
    TEX1 = _ret_0._t1;
    TEX2 = _ret_0._t2;
    TEX3 = _ret_0._t3;
    TEX4 = _ret_0._t4;
    TEX5 = _ret_0._t5;
    TEX6 = _ret_0._t6;
    TEX7 = _ret_0._t7;
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
COMPAT_VARYING     vec4 _t7;
COMPAT_VARYING     vec4 _t6;
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _color1;
    vec2 _texCoord;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
    vec4 _t7;
};
vec4 _ret_0;
vec3 _TMP11;
vec3 _TMP17;
float _TMP16;
float _TMP15;
float _TMP14;
vec3 _TMP13;
vec3 _TMP10;
vec3 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
uniform sampler2D Texture;
input_dummy _IN1;
vec2 _x0023;
vec3 _b0045;
vec3 _b0049;
vec3 _TMP50;
vec3 _a0051;
vec3 _TMP80;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX6;
COMPAT_VARYING vec4 TEX7;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _fp;
    vec3 _B;
    vec3 _D;
    vec3 _E;
    vec3 _F;
    vec3 _H;
    vec3 _D0;
    vec3 _F4;
    vec3 _n1;
    vec3 _n2;
    vec3 _n3;
    vec3 _n4;
    vec3 _s;
    vec3 _aa;
    vec3 _bb;
    vec3 _cc;
    vec3 _dd;
    vec3 _t;
    vec3 _m;
    vec3 _res;
    vec3 _color;
    float _ddy;
    float _v_weight_00;
    vec3 _coords10;
    vec3 _colorNB;
    float _v_weight_10;
    _x0023 = TEX0.xy*TextureSize;
    _fp = fract(_x0023);
    _TMP1 = COMPAT_TEXTURE(Texture, TEX2.yw);
    _B = vec3(float(_TMP1.x), float(_TMP1.y), float(_TMP1.z));
    _TMP2 = COMPAT_TEXTURE(Texture, TEX3.xw);
    _D = vec3(float(_TMP2.x), float(_TMP2.y), float(_TMP2.z));
    _TMP3 = COMPAT_TEXTURE(Texture, TEX3.yw);
    _E = vec3(float(_TMP3.x), float(_TMP3.y), float(_TMP3.z));
    _TMP4 = COMPAT_TEXTURE(Texture, TEX3.zw);
    _F = vec3(float(_TMP4.x), float(_TMP4.y), float(_TMP4.z));
    _TMP5 = COMPAT_TEXTURE(Texture, TEX4.yw);
    _H = vec3(float(_TMP5.x), float(_TMP5.y), float(_TMP5.z));
    _TMP7 = COMPAT_TEXTURE(Texture, TEX6.xz);
    _D0 = vec3(float(_TMP7.x), float(_TMP7.y), float(_TMP7.z));
    _TMP8 = COMPAT_TEXTURE(Texture, TEX7.xz);
    _F4 = vec3(float(_TMP8.x), float(_TMP8.y), float(_TMP8.z));
    _n1 = vec3(float(_D0.x), float(_D0.y), float(_D0.z));
    _n2 = vec3(float(_D.x), float(_D.y), float(_D.z));
    _s = vec3(float(_E.x), float(_E.y), float(_E.z));
    _n3 = vec3(float(_F.x), float(_F.y), float(_F.z));
    _n4 = vec3(float(_F4.x), float(_F4.y), float(_F4.z));
    _aa = _n2 - _n1;
    _bb = _s - _n2;
    _cc = _n3 - _s;
    _dd = _n4 - _n3;
    _t = (7.00000000E+00*(_bb + _cc) - 3.00000000E+00*(_aa + _dd))/1.60000000E+01;
    _m = vec3(_s.x < 5.00000000E-01 ? (2.00000000E+00*_s).x : (2.00000000E+00*(1.00000000E+00 - _s)).x, _s.y < 5.00000000E-01 ? (2.00000000E+00*_s).y : (2.00000000E+00*(1.00000000E+00 - _s)).y, _s.z < 5.00000000E-01 ? (2.00000000E+00*_s).z : (2.00000000E+00*(1.00000000E+00 - _s)).z);
    _TMP9 = abs(_bb);
    _b0045 = 2.00000000E+00*_TMP9 + 9.99999978E-03;
    _m = min(_m, _b0045);
    _TMP10 = abs(_cc);
    _b0049 = 2.00000000E+00*_TMP10 + 9.99999978E-03;
    _m = min(_m, _b0049);
    _a0051 = -_m;
    _TMP13 = min(_m, _t);
    _TMP50 = max(_a0051, _TMP13);
    _res = (2.00000000E+00*_fp.x - 1.00000000E+00)*_TMP50 + _s;
    _TMP14 = pow(_res.x, 2.40000010E+00);
    _TMP15 = pow(_res.y, 2.40000010E+00);
    _TMP16 = pow(_res.z, 2.40000010E+00);
    _color = vec3(_TMP14, _TMP15, _TMP16);
    _ddy = _fp.y - 5.00000000E-01;
    _v_weight_00 = _ddy/6.00000024E-01;
    if (_v_weight_00 > 1.00000000E+00) { 
        _v_weight_00 = 1.00000000E+00;
    } 
    _v_weight_00 = 1.00000000E+00 - _v_weight_00*_v_weight_00;
    _v_weight_00 = _v_weight_00*_v_weight_00;
    _color = _color*vec3(_v_weight_00, _v_weight_00, _v_weight_00);
    if (_ddy > 0.00000000E+00) { 
        _coords10 = vec3(float(_H.x), float(_H.y), float(_H.z));
        _ddy = 1.00000000E+00 - _ddy;
    } else {
        _coords10 = vec3(float(_B.x), float(_B.y), float(_B.z));
        _ddy = 1.00000000E+00 + _ddy;
    } 
    _TMP14 = pow(_coords10.x, 2.40000010E+00);
    _TMP15 = pow(_coords10.y, 2.40000010E+00);
    _TMP16 = pow(_coords10.z, 2.40000010E+00);
    _colorNB = vec3(_TMP14, _TMP15, _TMP16);
    _v_weight_10 = _ddy/6.00000024E-01;
    if (_v_weight_10 > 1.00000000E+00) { 
        _v_weight_10 = 1.00000000E+00;
    } 
    _v_weight_10 = 1.00000000E+00 - _v_weight_10*_v_weight_10;
    _v_weight_10 = _v_weight_10*_v_weight_10;
    _color = _color + _colorNB*vec3(_v_weight_10, _v_weight_10, _v_weight_10);
    _color = _color*vec3( 1.39999998E+00, 1.39999998E+00, 1.39999998E+00);
    _TMP14 = pow(_color.x, 4.54545438E-01);
    _TMP15 = pow(_color.y, 4.54545438E-01);
    _TMP16 = pow(_color.z, 4.54545438E-01);
    _TMP11 = vec3(_TMP14, _TMP15, _TMP16);
    _TMP17 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP11);
    _TMP80 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP17);
    _ret_0 = vec4(_TMP80.x, _TMP80.y, _TMP80.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
