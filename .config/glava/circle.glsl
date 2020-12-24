// vim: ft=c
/* center radius (pixels) */
#define C_RADIUS 333
/* center line thickness (pixels) */
#define C_LINE 3
/* outline color */
/* #define OUTLINE #2aa6ff */
#define OUTLINE #C79E6D 
/* Amplify magnitude of the results each bar displays */
#define AMPLIFY 300
/* Angle (in radians) for how much to rotate the visualizer */
#define ROTATE (PI / 2)
/* Whether to switch left/right audio buffers */
#define INVERT 0
/* Whether to fill in the space between the line and inner circle */
#define C_FILL 0
/* Whether to apply a post-processing image smoothing effect
   1 to enable, 0 to disable. Only works with `xroot` transparency,
   and improves performance if disabled. */
#define C_SMOOTH 0

/* Gravity step, overrude frin `smooth_parameters.glsl` */
// #request setgravitystep 6.0

/* Smoothing factor, override from `smooth_parameters.glsl` */
// #request setsmoothfactor 0.01
