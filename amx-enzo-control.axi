program_name='amx-enzo-control'

#if_not_defined __AMX_ENZO_CONTROL__
#define __AMX_ENZO_CONTROL__


#include 'SNAPI';
#include 'amx-enzo-api';
#include 'amx-device-control';


define_function enzoSessionStart(dev enzo)
{
	sendCommand(enzo, ENZO_COMMAND_START);
}

define_function enzoSessionEnd(dev enzo)
{
	sendCommand(enzo, ENZO_COMMAND_EXIT);
}

define_function enzoAlert(dev enzo, char message[], char type[], char title[],
		char isModal, integer timeout)
{
	stack_var char cmd[DUET_MAX_CMD_LEN];

	cmd = DuetPackCmdHeader(ENZO_COMMAND_ALERT);
	cmd = DuetPackCmdParam(cmd, message);
	cmd = DuetPackCmdParam(cmd, type);
	cmd = DuetPackCmdParam(cmd, title);
	if (isModal)
	{
		cmd = DuetPackCmdParam(cmd, 'true');
	}
	else
	{
		cmd = DuetPackCmdParam(cmd, 'false');
	}
	cmd = DuetPackCmdParam(cmd, itoa(timeout));

	sendCommand(enzo, cmd);
}

define_function enzoAlertClose(dev enzo)
{
	sendCommand(enzo, ENZO_COMMAND_ALERT_CLOSE);
}

define_function enzoBlankingShow(dev enzo, char useLogo)
{
	if (useLogo == true)
	{
		sendCommand(enzo, ENZO_COMMAND_BLANK_LOGO);
	}
	else
	{
		sendCommand(enzo, ENZO_COMMAND_BLANK);
	}
}

define_function enzoBlankingHide(dev enzo)
{
	sendCommand(enzo, ENZO_COMMAND_BLANK_CLOSE);
}

define_function enzoShowWebApp(dev enzo, char address[])
{
	stack_var char cmd[DUET_MAX_CMD_LEN];

	cmd = DuetPackCmdHeader(ENZO_COMMAND_WEB);
	cmd = DuetPackCmdParam(cmd, address);

	sendCommand(enzo, cmd);
}

define_function enzoHideWebApp(dev enzo)
{
	sendCommand(enzo, ENZO_COMMAND_WEB_CLOSE);
}

define_function enzoRequestContentSources(dev enzo)
{
	sendCommand(enzo, ENZO_COMMAND_CONTENT_SOURCES_REQUEST);
}

define_function enzoSetContentSource(dev enzo, char source[])
{
	stack_var char cmd[DUET_MAX_CMD_LEN];

	cmd = DuetPackCmdHeader(ENZO_COMMAND_CONTENT_SOURCE_SET);
	cmd = DuetPackCmdParam(cmd, source);

	sendCommand(enzo, cmd);
}

define_function enzoSetContentPath(dev enzo, char path[])
{
	stack_var char cmd[DUET_MAX_CMD_LEN];

	cmd = DuetPackCmdHeader(ENZO_COMMAND_CONTENT_PATH_SET);
	cmd = DuetPackCmdParam(cmd, path);

	sendCommand(enzo, cmd);
}

define_function enzoContentOpen(dev enzo, char path[])
{
	stack_var char cmd[DUET_MAX_CMD_LEN];

	cmd = DuetPackCmdHeader(ENZO_COMMAND_CONTENT_OPEN);
	cmd = DuetPackCmdParam(cmd, path);

	sendCommand(enzo, cmd);
}

define_function enzoRequestContentItems(dev enzo, integer startIndex,
		integer maxRecords, char excludeSpecialItems)
{
	stack_var char cmd[DUET_MAX_CMD_LEN];

	cmd = DuetPackCmdHeader(ENZO_COMMAND_CONTENT_ITEMS_DETAIL_REQUEST);
	cmd = DuetPackCmdParam(cmd, itoa(startIndex));
	cmd = DuetPackCmdParam(cmd, itoa(maxRecords));
	switch (excludeSpecialItems)
	{
		case TRUE:    cmd = DuetPackCmdParam(cmd, 'true');
		case FALSE:   cmd = DuetPackCmdParam(cmd, 'false');
	}

	sendCommand(enzo, cmd);
}






define_function enzoUp (dev enzo)
{
	sendCommand (enzo, ENZO_COMMAND_UP)
}

define_function enzoDown (dev enzo)
{
	sendCommand (enzo, ENZO_COMMAND_DOWN)
}

define_function enzoLeft (dev enzo)
{
	sendCommand (enzo, ENZO_COMMAND_LEFT)
}

define_function enzoRight (dev enzo)
{
	sendCommand (enzo, ENZO_COMMAND_RIGHT)
}

define_function enzoBack (dev enzo)
{
	sendCommand (enzo, ENZO_COMMAND_BACK)
}

define_function enzoHome (dev enzo)
{
	sendCommand (enzo, ENZO_COMMAND_HOME)
}

define_function enzoEnter (dev enzo)
{
	sendCommand (enzo, ENZO_COMMAND_ENTER)
}

define_function enzoPageDown (dev enzo)
{
	sendCommand (enzo, ENZO_COMMAND_PAGE_DOWN)
}

define_function enzoPageUp (dev enzo)
{
	sendCommand (enzo, ENZO_COMMAND_PAGE_UP)
}

define_function enzoKeystrokes (dev enzo, char keystrokes[])
{
	sendCommand (enzo, "ENZO_COMMAND_KEY,'-',keystrokes")
}

define_function enzoFfwd (dev enzo)
{
	sendCommand (enzo, ENZO_COMMAND_FFWD)
}

define_function enzoPause (dev enzo)
{
	sendCommand (enzo, ENZO_COMMAND_PAUSE)
}

define_function enzoPlay (dev enzo)
{
	sendCommand (enzo, ENZO_COMMAND_PLAY)
}

define_function enzoRewind (dev enzo)
{
	sendCommand (enzo, ENZO_COMMAND_REWIND)
}

define_function enzoStop (dev enzo)
{
	sendCommand (enzo, ENZO_COMMAND_STOP)
}

define_function enzoPrevious (dev enzo)
{
	sendCommand (enzo, ENZO_COMMAND_PREVIOUS)
}

define_function enzoNext (dev enzo)
{
	sendCommand (enzo, ENZO_COMMAND_NEXT)
}

define_function enzoRequestPasscode (dev enzo)
{
	sendCommand (enzo, ENZO_COMMAND_PASSCODE_REQUEST)
}

































#end_if

