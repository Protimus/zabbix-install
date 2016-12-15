# zabbix-install

##English:
This is a collection of zabbix scripts to automated installation of zabbix-agent in windows and linux.
The supported version of zabbix is: zabbix_agents_3.2.0.linux2_6_23.amd64 and zabbix_agents_3.2.0.win

Keep in mind that before execute the script you need change the server IP in zabbix_agentd.conf to your IP Address where Zabbix server are installed.

Server=127.0.0.1 

##Portuguese:

Esta é uma coleção de scripts para automação de instalação do zabbix-agent para windows e linux.
As versões suportadas para zabbix é: zabbix_agents_3.2.0.linux2_6_23.amd64 and zabbix_agents_3.2.0.win

Tenha em mente que antes de executar o script, você precisa mudar o IP do servidor em zabbix_agentd.conf para o IP da sua máquina master onde o servidor do zabbix está instalado.

Server=127.0.0.1


### Notes
  * The zabbix agent are putted in service startup, so they will start every time when you start the OS.
  * Is important to do a backup of zabbix before start this script, if you already have a zabbix running.
