program_name='amx-enzo-control'

#if_not_defined __AMX_ENZO_CONTROL__
#define __AMX_ENZO_CONTROL__


#include 'SNAPI';
#include 'amx-enzo-api';
#include 'amx-device-control';


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


#end_if
