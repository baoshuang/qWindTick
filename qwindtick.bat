@echo off
rem ����q.kλ��
set qhome=%~dp0q

rem �л�����ǰ�̷�
%~d0

rem ���� tickerplant
cd  %~dp0\q\tick
start "tickerplant(5010)" /min %~dp0\q\w32\q.exe tick/tick.q   -p 5010 -u %~dp0\q\qusers

rem �ȴ�0.5�룬ȷ��tickerplant������
ping 127.0.0.1 -n 5 -w 500 > nul

rem ���� rdb
cd  %~dp0\q\tick
start "rdb(5011)" /min %~dp0\q\w32\q.exe tick/tick/r.q -p 5011  -U %~dp0\q\qusers

rem ���� hdb
cd  %~dp0\q\tick
start "hdb(5012)" /min %~dp0\q\w32\q.exe tick/hdb.q -p 5012 -U %~dp0\q\qusers

rem ���� show 
cd  %~dp0\q\tick
start "show(5019)" /min %~dp0\q\w32\q.exe tick/cx.q show -p 5019 -U %~dp0\q\qusers

rem ���� wind data feed
cd  %~dp0
start "windmd(5015)" /min %~dp0\q\w32\q.exe windmd.q -p 5015  -U %~dp0\q\qusers

cd %~dp0


