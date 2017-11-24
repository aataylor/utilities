@echo off


set host=192.168.1.1
set logfile=Log_%host%.log
set counter= 0

echo Target Host = %host% >%logfile%

:: for testing, Add these into the do portion of :Ping
:: echo %date% %time:~0,2%:%time:~3,2%:%time:~6,2% %%A
:: timeout 1 >NUL 

:Ping
for /f "tokens=* skip=2" %%A in ('ping %host% -n 1 ') do (
    echo %date% %time:~0,2%:%time:~3,2%:%time:~6,2% %%A>>%logfile%
    GOTO LeaveIfNeccessary
	)
	
:LeaveIfNeccessary
:: Adding in a counter to only do it a few times
:: link: https://stackoverflow.com/questions/19137876/how-do-i-loop-a-batch-script-only-a-certain-amount-of-times
set /A counter="%counter%"+1
:: debug to see counter
:: echo %counter% >> %logfile%
if "%counter%"=="5" (EXIT) else ( GOTO Ping )

:: SAFETY NET
EXIT 