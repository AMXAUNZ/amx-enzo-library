program_name='amx-enzo-listener'

#if_not_defined __AMX_ENZO_LISTENER__
#define __AMX_ENZO_LISTENER__


#include 'string';
#include 'amx-enzo-api';


/*
 * --------------------
 * Device arrays
 * --------------------
 */

define_variable

#if_not_defined dvEnzoDevices
dev dvEnzoDevices[] = {20001:1:0};
#end_if



/*
 * --------------------
 * Callback functions
 * --------------------
 */

 /*

#define INCLUDE_ENZO_NOTIFY_CONTENT_SOURCE_COUNT
define_function enzoNotifyContentSourceCount(dev enzo, integer relativeCount,
		integer absoluteCount)
{
	// enzo is the enzo device
	// relativeCount is the number of sources counted from the passed index
	// absoluteCount is the total number of sources
}

#define INCLUDE_ENZO_NOTIFY_CONTENT_SOURCES
define_function enzoNotifyContentSourcesRecord(dev enzo, integer relativeIndex,
		integer absoluteIndex, char id[], char name[], char rootPath[]
		char isAvailable)
{
	// enzo is the enzo device
	// relativeIndex is the relative index from the passed query start index
	// absoluteIndex is the absolute source index
	// id is the source id to use when selecting / referring to the from the API
	// name is the human readable source name
	// rootPath is the source root path
	// isAvailable is a boolean reflecting the source availability state
}

#define INCLUDE_ENZO_NOTIFY_CONTENT_SOURCES_ERROR
define_function enzoNotifyContentSourcesError(dev enzo, char errorMessage[])
{
	// enzo is the enzo device
	// errorMessage is the message returned from the device
}

#define INCLUDE_ENZO_NOTIFY_CONTENT_ERROR
define_function enzoNotifyContentError(dev enzo, char errorMessage[])
{
	// enzo is the enzo device
	// errorMessage is the message returned from the device
}

#define INCLUDE_ENZO_NOTIFY_CONTENT_ITEMS_RECORD_COUNT
define_function enzoNotifyContentItemsRecordCount(dev enzo,
		integer relativeCount, integer absoluteCount)
{
	// enzo is the enzo device
	// relativeCount is the number of items counted from the passed index
	// absoluteCount is the total number of items
}

#define INCLUDE_ENZO_NOTIFY_CONTENT_ITEMS_RECORD
define_function enzoNotifyContentItemsRecord(dev enzo, integer relativeIndex,
		integer absoluteIndex, char sourceId[], char path[], char name[],
		char type[], long size, char lastModified[], char readOnly)
{
	// enzo is the enzo device
	// relativeIndex is the relative index from the passed query start index
	// absoluteIndex is the absolute source index
	// sourceId is the key for the content source containing the item
	// path is the path to the content item to use in the API
	// name is the human readable source name
	// type is the file / item type
	// size is the file size in bytes
	// lastModified is the files last modified date as a string
	// readOnly is a boolean value representable the file access restrictions
}

#define INCLUDE_ENZO_NOTIFY_CONTENT_PATH_CHANGED
define_function enzoNotifyContentPathChanged(dev enzo, char sourceId[], char path[])
{
	// enzo is the enzo device
	// sourceId is the key for the content source containing the item
	// path is the new API cursor point 
}

#define INCLUDE_ENZO_NOTIFY_CONTENT_OPEN_ERROR
define_function enzoNotifyContentContentOpenError(dev enzo, char message[256],
		char path[256])
{
	// enzo is the enzo device
	// message is the contents of the resturned message
	// path is the path to the file which generated the error
}


*/


define_event

data_event[dvEnzoDevices]
{
	command:
	{
		stack_var char cmd[256];
		stack_var char params[10][128];

		cmd = string_get_key(data.text, '-');
		explode(',', string_get_value(data.text, '-'), params, 0);

		switch (cmd)
		{

			#if_defined INCLUDE_ENZO_NOTIFY_CONTENT_SOURCE_COUNT
			case ENZO_COMMAND_CONTENT_SOURCES_COUNT:
			{
				enzoNotifyContentSourceCount(data.device, atoi(params[1]),
						atoi(params[2]));
			}
			#end_if

			#if_defined INCLUDE_ENZO_NOTIFY_CONTENT_SOURCES
			case ENZO_COMMAND_CONTENT_SOURCES_RESPONSE:
			{
				enzoNotifyContentSourcesRecord(data.device, atoi(params[1]),
						atoi(params[2]), params[3], params[4], params[5],
						string_to_bool(params[6]));
			}
			#end_if

			#if_defined INCLUDE_ENZO_NOTIFY_CONTENT_SOURCES_ERROR
			case ENZO_COMMAND_CONTENT_SOURCES_ERROR:
			{
				enzoNotifyContentSourcesError(data.device, params[1]);
			}
			#end_if

			#if_defined INCLUDE_ENZO_NOTIFY_CONTENT_ERROR
			case ENZO_COMMAND_CONTENT_ERROR:
			{
				enzoNotifyContentError(data.device, params[1]);
			}
			#end_if
			
			#if_defined INCLUDE_ENZO_NOTIFY_CONTENT_ITEMS_RECORD_COUNT
			case ENZO_COMMAND_CONTENT_ITEMS_DETAIL_COUNT:
			{
				enzoNotifyContentItemsRecordCount(data.device, atoi(params[1]),
						atoi(params[2]));
			}
			#end_if
			
			#if_defined INCLUDE_ENZO_NOTIFY_CONTENT_ITEMS_RECORD
			case ENZO_COMMAND_CONTENT_ITEMS_DETAIL_RESPONSE:
			{
				enzoNotifyContentItemsRecord(data.device, atoi(params[1]),
						atoi(params[2]), params[3], params[4], params[5],
						params[6], atoi(params[7]), params[8],
						string_to_bool(params[9]));
			}
			#end_if
			
			#if_defined INCLUDE_ENZO_NOTIFY_CONTENT_PATH_CHANGED
			case ENZO_COMMAND_CONTENT_PATH_RESPONSE:
			{
				enzoNotifyContentPathChanged(data.device, params[1], params[2]);
			}
			#end_if
			
			#if_defined INCLUDE_ENZO_NOTIFY_CONTENT_OPEN_ERROR
			case ENZO_COMMAND_CONTENT_OPEN_ERROR:
			{
				enzoNotifyContentContentOpenError(data.device, params[1], params[2]);
			}
			#end_if

			default:
			{
			}

		}
	}
}


#end_if
