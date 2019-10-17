const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#1C2023", /* black   */
  [1] = "#75A8CC", /* red     */
  [2] = "#9399AE", /* green   */
  [3] = "#D3B39E", /* yellow  */
  [4] = "#F1D4B5", /* blue    */
  [5] = "#A5B2CD", /* magenta */
  [6] = "#BAC5DD", /* cyan    */
  [7] = "#dde0e7", /* white   */

  /* 8 bright colors */
  [8]  = "#9a9ca1",  /* black   */
  [9]  = "#75A8CC",  /* red     */
  [10] = "#9399AE", /* green   */
  [11] = "#D3B39E", /* yellow  */
  [12] = "#F1D4B5", /* blue    */
  [13] = "#A5B2CD", /* magenta */
  [14] = "#BAC5DD", /* cyan    */
  [15] = "#dde0e7", /* white   */

  /* special colors */
  [256] = "#1C2023", /* background */
  [257] = "#dde0e7", /* foreground */
  [258] = "#dde0e7",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
