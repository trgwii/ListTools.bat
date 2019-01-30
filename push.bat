@setlocal EnableDelayedExpansion
@set item=%~1
@set list=%~2
@set length=!%list%_length!
@endlocal && set "%list%_%length%=%item%" && set /A %list%_length+=1
