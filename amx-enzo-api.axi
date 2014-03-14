PROGRAM_NAME='amx-enoz-api'

#if_not_defined __AMX_ENZO_API__
#define __AMX_ENZO_API__


#include 'SNAPI';


/*
 * --------------------
 * amx-dxlink-api
 *
 * For usage, check out the readme for the amx-enzo-library.
 * --------------------
 */


define_constant

/*
 * --------------------
 * Enzo channel codes
 * --------------------
 */
 
integer ENZO_CHANNEL_PLAY 					= PLAY;
integer ENZO_CHANNEL_STOP 					= STOP;
integer ENZO_CHANNEL_PAUSE 					= PAUSE;
integer ENZO_CHANNEL_NEXT 					= FFWD;
integer ENZO_CHANNEL_PREV 					= REW;
integer ENZO_CHANNEL_FFWD 					= SFWD;
integer ENZO_CHANNEL_REW 					= SREV;
integer ENZO_CHANNEL_VOL_UP					= VOL_UP;
integer ENZO_CHANNEL_VOL_DN					= VOL_DN
integer ENZO_CHANNEL_VOL_MUTE				= VOL_MUTE;
 
 
 
/*
 * --------------------
 * Enzo messaging command headers
 * --------------------
 */

char ENZO_COMMAND_ALERT[] 					= 'ALERT';
char ENZO_COMMAND_ALERT_CLOSE[]				= 'ALERT.CLOSE';
 
char ENZO_COMMAND_BACK[]					= 'BACK';

char ENZO_COMMAND_BLANK[]					= 'BLANK';
char ENZO_COMMAND_BLANK_CLOSE[]				= 'BLANK.CLOSE';
char ENZO_COMMAND_BLANK_LOGO[]				= 'BLANK.LOGO';

char ENZO_COMMAND_BROWSER[]					= 'BROWSER';

char ENZO_COMMAND_CONTENT_EMAIL[]					= 'CONTENT.ACTION.EMAIL';
char ENZO_COMMAND_CONTENT_OPEN[]					= 'CONTENT.ACTION.OPEN';
char ENZO_COMMAND_CONTENT_SHARE[]					= 'CONTENT.ACTION.SHARE';
char ENZO_COMMAND_CONTENT_ITEM_DETAIL_REQUEST[]		= '?CONTENT.ITEM';
char ENZO_COMMAND_CONTENT_ITEM_DETAIL_RESPONSE[]	= 'CONTENT.ITEM';
char ENZO_COMMAND_CONTENT_ITEMS_DETAIL_REQUEST[]	= '?CONTENT.ITEMS';
char ENZO_COMMAND_CONTENT_ITEMS_DETAIL_RESPONSE[]	= 'CONTENT.ITEMS.RECORD';
char ENZO_COMMAND_CONTENT_ITEMS_COUNT_REQUEST[]		= '?CONTENT.ITEMS.COUNT';
char ENZO_COMMAND_CONTENT_ITEMS_COUNT_RESPONSE[]	= 'CONTENT.ITEMS.COUNT';
char ENZO_COMMAND_CONTENT_PATH_REQUEST[]			= 'CONTENT.PATH';


#end_if
