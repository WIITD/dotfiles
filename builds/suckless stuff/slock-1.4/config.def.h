/* user and group to drop privileges to */
static const char *user  = "nobody";
static const char *group = "nogroup";

static const char *colorname[NUMCOLS] = {
	[INIT] =   "#130e16",     /* after initialization */
	[INPUT] =  "#9c8eb2",   /* during input */
	[FAILED] = "#ce1a38",   /* wrong password */
	[CAPS] = "red",         /* CapsLock on */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;

/* default message */
static const char * message = "";

/* text color */
static const char * text_color = "#cfc9d2";

/* text size (must be a valid size) */
static const char * font_name = "9x15";
