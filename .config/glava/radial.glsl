
/* center radius (pixels) */
#define C_RADIUS 233
/* center line thickness (pixels) */
#define C_LINE 0
/* outline color */
#define OUTLINE #333333
/* number of bars (use even values for best results) */
#define NBARS 400
/* width (in pixels) of each bar*/
#define BAR_WIDTH 3.5
/* outline color */
#define BAR_OUTLINE OUTLINE
/* outline width (in pixels, set to 0 to disable outline drawing) */
#define BAR_OUTLINE_WIDTH 0
/* Amplify magnitude of the results each bar displays */
#define AMPLIFY 400
/* Bar color */ 
#define COLOR (#315B85 * ((d / 100) + 1))
/* Angle (in radians) for how much to rotate the visualizer */
#define ROTATE (PI / 2)
/* Whether to switch left/right audio buffers */
#define INVERT 0
/* Aliasing factors. Higher values mean more defined and jagged lines.
   Note: aliasing does not have a notable impact on performance, but requires
   `xroot` transparency to be enabled since it relies on alpha blending with
   the background. */
#define BAR_ALIAS_FACTOR 1.2
#define C_ALIAS_FACTOR 1.8
/* Offset (Y) of the visualization */
#define CENTER_OFFSET_Y -37
/* Offset (X) of the visualization */
#define CENTER_OFFSET_X -282


/* Gravity step, override from `smooth_parameters.glsl` */
#request setgravitystep 5.0

/* Smoothing factor, override from `smooth_parameters.glsl` */
#request setsmoothfactor 0.02
