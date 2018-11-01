@setlocal EnableDelayedExpansion
@set output=%~1
@set list=%~2
@set length=!%list%_length!
@set /A new_length=%length%-1
@set item=!%list%_%new_length%!
@endlocal && set "%list%_length=%new_length%" && set "%output%=%item%"
