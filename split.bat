@pushd "%~dp0"
@setlocal EnableDelayedExpansion
@set delimiter=%~1
@set string=%~2
@set output=%~3
@set __split_list_type=list
@set __split_list_length=0
@set i=0
@set buffer=
:loop
@set current=!string:~%i%,1!
@if "%delimiter%"=="%current%" (
	call push "%buffer%" __split_list
	set buffer=
) else (
	set "buffer=%buffer%%current%"
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
@popd
