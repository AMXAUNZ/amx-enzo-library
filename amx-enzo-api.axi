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
 * Channel codes
 * --------------------
 */
integer ENZO_CHANNEL_PLAY     = PLAY;
integer ENZO_CHANNEL_STOP     = STOP;
integer ENZO_CHANNEL_PAUSE    = PAUSE;
integer ENZO_CHANNEL_NEXT     = FFWD;
integer ENZO_CHANNEL_PREV     = REW;
integer ENZO_CHANNEL_FFWD     = SFWD;
integer ENZO_CHANNEL_REW      = SREV;
integer ENZO_CHANNEL_VOL_UP   = VOL_UP;
integer ENZO_CHANNEL_VOL_DN   = VOL_DN
integer ENZO_CHANNEL_VOL_MUTE = VOL_MUTE;


/*
 * --------------------
 * Messaging commands
 * --------------------
 */
char ENZO_COMMAND_ALERT[]       = 'ALERT-';
char ENZO_COMMAND_ALERT_CLOSE[] = 'ALERT.CLOSE';

/*
 * --------------------
 * Blanking commands
 * --------------------
 */
char ENZO_COMMAND_BLANK[]       = 'BLANK';
char ENZO_COMMAND_BLANK_CLOSE[] = 'BLANK.CLOSE';
char ENZO_COMMAND_BLANK_LOGO[]  = 'BLANK.LOGO';

/*
 * --------------------
 * Browser commands
 * --------------------
 */
char ENZO_COMMAND_BROWSER[] = 'BROWSER';

/*
 * --------------------
 * Content commands
 * --------------------
 */
char ENZO_COMMAND_CONTENT_EMAIL[]                 = 'CONTENT.ACTION.EMAIL';
char ENZO_COMMAND_CONTENT_EMAIL_SUCCESS[]         = 'CONTENT.ACTION.EMAIL.SUCCESS';
char ENZO_COMMAND_CONTENT_EMAIL_ERROR[]           = 'CONTENT.ACTION.EMAIL.ERROR';
char ENZO_COMMAND_CONTENT_OPEN[]                  = 'CONTENT.ACTION.OPEN';
char ENZO_COMMAND_CONTENT_OPEN_SUCCESS[]          = 'CONTENT.ACTION.OPEN.SUCCESSS';
char ENZO_COMMAND_CONTENT_OPEN_ERROR[]            = 'CONTENT.ACTION.OPEN.ERROR';
char ENZO_COMMAND_CONTENT_SHARE[]                 = 'CONTENT.ACTION.SHARE';
char ENZO_COMMAND_CONTENT_SHARE_SUCCESS[]         = 'CONTENT.ACTION.SHARE.SUCCESS';
char ENZO_COMMAND_CONTENT_SHARE_ERROR[]           = 'CONTENT.ACTION.SHARE.ERROR';
char ENZO_COMMAND_CONTENT_ITEM_DETAIL_REQUEST[]   = '?CONTENT.ITEM';
char ENZO_COMMAND_CONTENT_ITEM_DETAIL_RESPONSE[]  = 'CONTENT.ITEM';
char ENZO_COMMAND_CONTENT_ITEM_DETAIL_ERROR[]     = 'CONTENT.ITEM.ERROR';
char ENZO_COMMAND_CONTENT_ITEMS_DETAIL_REQUEST[]  = '?CONTENT.ITEMS';
char ENZO_COMMAND_CONTENT_ITEMS_DETAIL_COUNT[]    = 'CONTENT.ITEMS.RECORD.COUNT';
char ENZO_COMMAND_CONTENT_ITEMS_DETAIL_RESPONSE[] = 'CONTENT.ITEMS.RECORD';
char ENZO_COMMAND_CONTENT_ITEMS_DETAIL_ERROR[]    = 'CONTENT.ITEMS.ERROR';
char ENZO_COMMAND_CONTENT_ITEMS_COUNT_REQUEST[]   = '?CONTENT.ITEMS.COUNT';
char ENZO_COMMAND_CONTENT_ITEMS_COUNT_RESPONSE[]  = 'CONTENT.ITEMS.COUNT';
char ENZO_COMMAND_CONTENT_ITEMS_COUNT_ERROR[]     = 'CONTENT.ITEMS.COUNT.ERROR';
char ENZO_COMMAND_CONTENT_PATH_REQUEST[]          = '?CONTENT.PATH';
char ENZO_COMMAND_CONTENT_PATH_RESPONSE[]         = 'CONTENT.PATH';
char ENZO_COMMAND_CONTENT_PATH_ERROR[]            = 'CONTENT.PATH.ERROR';
char ENZO_COMMAND_CONTENT_PATH_SET[]              = 'CONTENT.PATH';
char ENZO_COMMAND_CONTENT_SEARCH[]                = 'CONTENT.SEARCH';
char ENZO_COMMAND_CONTENT_SEARCH_RESPONSE[]       = 'CONTENT.SEARCH.RESULT';
char ENZO_COMMAND_CONTENT_SEARCH_ERROR[]          = 'CONTENT.SEARCH.ERROR';
char ENZO_COMMAND_CONTENT_SEARCH_CLEAR[]          = 'CONTENT.SEARCH.CLEAR';
char ENZO_COMMAND_CONTENT_SOURCE_REQUEST[]        = '?CONTENT.SOURCE';
char ENZO_COMMAND_CONTENT_SOURCE_RESPONSE[]       = 'CONTENT.SOURCE';
char ENZO_COMMAND_CONTENT_SOURCE_ERROR[]          = 'CONTENT.SOURCE.ERROR';
char ENZO_COMMAND_CONTENT_SOURCE_SET[]            = 'CONTENT.SOURCE';
char ENZO_COMMAND_CONTENT_SOURCE_CAHNGED[]        = 'CONTENT.SOURCE.CHANGED';
char ENZO_COMMAND_CONTENT_SOURCE_EJECT[]          = 'CONTENT.SOURCE.EJECT';
char ENZO_COMMAND_CONTENT_SOURCE_EJECT_SUCCESS[]  = 'CONTENT.SOURCE.EJECTED';
char ENZO_COMMAND_CONTENT_SOURCE_EJECT_ERROR[]    = 'CONTENT.SOURCE.EJECT.ERROR';
char ENZO_COMMAND_CONTENT_SOURCE_LOGOUT[]         = 'CONTENT.SOURCE.LOGOUT';
char ENZO_COMMAND_CONTENT_SOURCE_LOGOUT_SUCCESS[] = 'CONTENT.SOURCE.LOGOUT';
char ENZO_COMMAND_CONTENT_SOURCE_LOGOUT_ERROR[]   = 'CONTENT.SOURCE.LOGOUT.ERROR';
char ENZO_COMMAND_CONTENT_SOURCES_REQUEST[]       = '?CONTENT.SOURCES';
char ENZO_COMMAND_CONTENT_SOURCES_COUNT[]         = 'CONTENT.SOURCES.RECORD.COUNT';
char ENZO_COMMAND_CONTENT_SOURCES_RESPONSE[]      = 'CONTENT.SOURCES.RECORD';
char ENZO_COMMAND_CONTENT_SOURCES_ERROR[]         = 'CONTENT.SOURCES.ERROR';
char ENZO_COMMAND_CONTENT_ERROR[]                 = 'CONTENT.ERROR';

/*
 * --------------------
 * Key / action commands
 * --------------------
 */
char ENZO_COMMAND_BACK[]      = 'BACK';
char ENZO_COMMAND_ENTER[]     = 'ENTER';
char ENZO_COMMAND_HOME[]      = 'HOME';
char ENZO_COMMAND_PAGE_DOWN[] = 'PAGE.DOWN';
char ENZO_COMMAND_PAGE_UP[]   = 'PAGE.UP';
char ENZO_COMMAND_LEFT[]      = 'LEFT';
char ENZO_COMMAND_RIGHT[]     = 'RIGHT';
char ENZO_COMMAND_UP[]        = 'UP';
char ENZO_COMMAND_DOWN[]      = 'DOWN';
char ENZO_COMMAND_KEY[]       = 'KEY';

/*
 * --------------------
 * Media transport commands
 * --------------------
 */
char ENZO_COMMAND_PAUSE[]    = 'PAUSE';
char ENZO_COMMAND_PLAY[]     = 'PLAY';
char ENZO_COMMAND_STOP[]     = 'STOP';
char ENZO_COMMAND_PREVIOUS[] = 'PREVIOUS';
char ENZO_COMMAND_NEXT[]     = 'NEXT';
char ENZO_COMMAND_FFWD[]     = 'FFWD';
char ENZO_COMMAND_REWIND[]   = 'REWIND';

/*
 * --------------------
 * Session control commands
 * --------------------
 */
char ENZO_COMMAND_EXIT[]  = 'EXIT';
char ENZO_COMMAND_START[] = 'START';

/*
 * --------------------
 * QR code display commands
 * --------------------
 */
char ENZO_COMMAND_QR[]       = 'QR-';
char ENZO_COMMAND_QR_CLOSE[] = 'QR.CLOSE';

/*
 * --------------------
 * Web apps commands
 * --------------------
 */
char ENZO_COMMAND_WEB[]       = 'WEB-';
char ENZO_COMMAND_WEB_CLOSE[] = 'WEB.CLOSE';

/*
 * --------------------
 * Alert types
 * --------------------
 */
char ENZO_ALERT_TYPE_INFORMATION[] = 'information';
char ENZO_ALERT_TYPE_WARNING[]     = 'warning';
char ENZO_ALERT_TYPE_QUESTION[]    = 'question';
char ENZO_ALERT_TYPE_SECURITY[]    = 'security';
char ENZO_ALERT_TYPE_CRITICAL[]    = 'critical';

/*
 * --------------------
 * Content types
 * --------------------
 */
char ENZO_CONTENT_TYPE_DIRECTORY[] = 'directory';
char ENZO_CONTENT_TYPE_PARENT[]    = 'parent';
char ENZO_CONTENT_TYPE_UNKNOWN[]   = 'unknown';

/*
 * --------------------
 * Special content path
 * --------------------
 */
char ENZO_CONTENT_PATH_UP[]           = '{UP}';
char ENZO_CONTENT_PATH_ROOT[]         = '{ROOT}';
char ENZO_CONTENT_PATH_REFRESH[]      = '{REFRESH}';
char ENZO_CONTENT_PATH_SEARCH_CLEAR[] = '{SEARCH.CLEAR}';

#end_if
