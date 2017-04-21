// 0 : Fetch Position from Sun
// 1 : Fetch Position from X/Y/Z or Bone but you need to set your follow bone
#define GHOST_MAP_TYPE 1
#define GHOST_COLOR_SHIFT_ENABLE 1
#define GHOST_MAP_FILE "textures by 2gou/ghost.png"

#define LENSFLARE_INDEX 1
#define LENSFLARE_COLOR_SHIFT_ENABLE 1
#define LENSFLARE_MAP_FILE "textures by 2gou/lensflare.png"

// r = Fixed Scale, g = scale by id, b = scale by camera
float3 GhostAllScale = float3(0.125, 0.025, 0.5);

// r = Fixed offset, g = offset by id
float2 GhostAllOffset = float2(0.0, 0.25);

// r = Fixed Brightness, g = brightness by id
float2 GhostAllBrightness = float2(10.0, 0.0);

// r = Fixed Flare shift
// g = Fixed Ghost shift
// b = Begin ID shift
// a = End ID shift
float4 GhostAllColorShift = float4(0.02, 0.035, 0.2, 1.0);

// r = Fixed scale
// g = Camera scale
// b = Offset
// a = Brightness
float4 GhostFlareParams = float4(10, 0.0, 0.0, 2.0);

// Control of single image params
// float4(x, y, z, w) = float4(Fixed scale, Scale by camera, Offset, Brightness)
float4 GhostParams[16] = { 
	float4(1.0, 1.0, 1.0, 1.0), float4(3.0, 0.0, 0.0, 1.0), float4(0.8, 1.0, 1.0, 1.0), float4(1.0, 1.0, 1.0, 1.0),
	float4(1.0, 1.0, 1.0, 1.0), float4(1.0, 1.0, 1.0, 1.0), float4(1.0, 1.0, 1.0, 1.0), float4(1.0, 1.0, 1.0, 1.0), 
	float4(1.0, 1.0, 1.0, 1.0), float4(1.0, 1.0, 1.0, 1.0), float4(1.0, 1.0, 1.0, 1.0), float4(1.0, 1.0, 1.0, 1.0),
	float4(1.0, 1.0, 1.0, 1.0), float4(1.0, 1.0, 1.0, 1.0), float4(1.0, 1.0, 1.0, 1.0), float4(1.0, 1.0, 1.0, 1.0)
};

float GhostShiftParams[16] = { 
	1.0, 1.0, 1.0, 1.0,
	1.0, 1.0, 1.0, 1.0, 
	1.0, 1.0, 1.0, 1.0,
	1.0, 1.0, 0.4, 0.5
};

#include "Shader/OpticalFlares.fxsub"