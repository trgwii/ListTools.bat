@pushd "%~dp0"
@setlocal EnableDelayedExpansion
@call init
@set item=%~1
@set list=%~2
@set length=!%list%%__list_sep%length!
@endlocal && popd && set "%list%%__list_sep%%length%=%item%" && set /A %list%%__list_sep%length+=1
