@echo off
REM Script de instalacao automatica do agente zabbix
REM Author @ Rafael P da Costa Gorges

SET ZABBIX_PATH=C:\zabbix
ECHO Iniciando instalacao do agente zabbix
MKDIR %ZABBIX_PATH%
IF EXIST %ZABBIX_PATH% (
	COPY *.* %ZABBIX_PATH%
	ECHO Hostname=%COMPUTERNAME% >> %ZABBIX_PATH%\zabbix_agentd.win.conf
	ECHO LogFile=%ZABBIX_PATH%\zabbix_agentd.log >> %ZABBIX_PATH%\zabbix_agentd.win.conf
	%ZABBIX_PATH%\zabbix_agentd.exe -i -c %ZABBIX_PATH%\zabbix_agentd.win.conf
	net start "Iniciando o agente zabbix"
) else (
	ECHO O agente zabbix nao pode ser instalado 
)
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /V "Zabbix" /t REG_SZ /F /D "C:\zabbix\zabbix_agentd.exe -i -c C:\zabbix\zabbix_agentd.win.conf"
@pause
