/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom     */
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = {
	"Hack:size=10:antialias=true:autohint=true",
    "monospace:size=10:antialias=true:autohint=true",
};
static const char *prompt      = NULL;      /* -p  option; prompt to the left of input field */
static const char *colors[SchemeLast][2] = {
	/*     fg         bg       */
	[SchemeNorm] = { "#9c8eb2", "#130e16" },
	[SchemeSel] = { "#cfc9d2", "#130e16" },
	[SchemeSelHighlight] = { "#380a54", "#130e16" },
	[SchemeNormHighlight] = { "#380a54", "#130e16" },
	[SchemeOut] = { "#130e16", "#380a54" },
};
/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines      = 0;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";
