@pushd "%~dp0"
@setlocal
@set delimiter=%~1
@set string=%~2
@set output=%~3
@call new __split_list
@set i=0
@set buffer=
:loop
@setlocal EnableDelayedExpansion
@set current=!string:~%i%,1!
@endlocal && set "current=%current%"
@if "%delimiter%"=="%current%" (
	call push "%buffer%" __split_list
	set buffer=
) else (
	if "%current%"=="!" (
		set "buffer=%buffer%^!"
	) else (
		set "buffer=%buffer%%current%"
	)
	if "%delimiter%"=="" (
		call push "%buffer%" __split_list
		set buffer=
	)
)
@set /A i+=1
@if not "%current%"=="" goto loop
@if not "%buffer%"=="" (
	call push "%buffer%" __split_list
	set buffer=
)
@call _copy __split_list "%output%" command
@endlocal && %command%
@set errorlevel=0
@popd
