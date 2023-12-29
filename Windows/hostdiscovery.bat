	@echo off
	setlocal enabledelayedexpansion
	
	for /L %%i in (1, 1, 254) do (
	    set "ip=4.4.4.%%i"
	    ping -n 1 -w 100 !ip! | find "TTL=" 
	)