@pushd "%~dp0"
@setlocal EnableDelayedExpansion
@call init
@set item=%~1
@set list=%~2
@call length "%list%" len
@endlocal && popd && set "%list%%__list_sep%%len%=%item%" && set /A %list%%__list_sep%length+=1
