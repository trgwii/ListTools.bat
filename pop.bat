@pushd "%~dp0"
@setlocal EnableDelayedExpansion
@call init
@set output=%~1
@set list=%~2
@set length=!%list%%__list_sep%length!
@set /A new_length=%length%-1
@set item=!%list%%__list_sep%%new_length%!
@endlocal && popd && set "%list%%__list_sep%%new_length%=" && set "%list%%__list_sep%length=%new_length%" && set "%output%=%item%"
