// vim: ft=c
/* Center line thickness (pixels) */
#define C_LINE 0
/* Width (in pixels) of each bar */
#define BAR_WIDTH 6
/* Width (in pixels) of each bar gap */
#define BAR_GAP 20
/* Outline color */
#define BAR_OUTLINE #2A292F
/* Outline width (in pixels, set to 0 to disable outline drawing) */
#define BAR_OUTLINE_WIDTH 0
/* Amplify magnitude of the results each bar displays */
#define AMPLIFY 1000
/* Whether the current settings use the alpha channel;
   enabling this is required for alpha to function
   correctly on X11 with `"native"` transparency. */
#define USE_ALPHA 1
/* How strong the gradient changes */
#define GRADIENT_POWER 5000
/* Bar color changes with height */
#define GRADIENT (d / GRADIENT_POWER + 1)
/* Bar color */

/* #define COLOR (#4CBAFF * GRADIENT) */
/* #define COLOR (#92AEB5 * GRADIENT) */
/* #define COLOR (#C386A3 * GRADIENT) */
/* #define COLOR (#9BCADC * GRADIENT) */
/* #define COLOR (#1c1c1c * GRADIENT) */
/* #define COLOR (#FA947E * GRADIENT) */
/* #define COLOR (#C79E6D * GRADIENT) */
#define COLOR (#FFD86D * GRADIENT)
/* #define COLOR (#FFD7B6 * GRADIENT) */
/* #define COLOR (#021943 * GRADIENT) */
/* #define COLOR (#8C959A * GRADIENT) */
/* #define COLOR (#B5EDFC * GRADIENT) */

/* Direction that the bars are facing, 0 for inward, 1 for outward */
#define DIRECTION 1
/* Whether to switch left/right audio buffers */
#define INVERT 0
/* Whether to flip the output vertically */
#define FLIP 1
/* Whether to mirror output along `Y = X`, causing output to render on the left side of the window */
/* Use with `FLIP 1` to render on the right side */
#define MIRROR_YX 1

