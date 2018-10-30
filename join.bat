@pushd "%~dp0"
@setlocal EnableDelayedExpansion
@set delimiter=%~1
@set list=%~2
@set result=
@call length "%list%" len
@set i=0
:loop
@if not "%i%" LSS "%len%" goto break
@call get %i% "%list%" current
@set "result=%result%%current%"
@set /A i+=1
@if "%i%" LSS "%len%" set "result=%result%%delimiter%"
@goto loop
:break
@endlocal && set "%~3=%result%"
@popd
