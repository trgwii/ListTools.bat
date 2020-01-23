@pushd "%~dp0"
@call init
@set __copy_i=0
@set __copy_in=%~1
@set __copy_out=%~2
@set __copy_command=%~3
@set __copy_file=%TEMP%\__copy_%RANDOM%%RANDOM%%RANDOM%.bat
@set __copy_current=
@call _expand "%__copy_in%%__list_sep%length" __copy_in_length
@>"%__copy_file%" echo @set "%__copy_out%%__list_sep%type=list"
@>>"%__copy_file%" echo @set "%__copy_out%%__list_sep%length=%__copy_in_length%"
:loop
@if not "%__copy_i%" LSS "%__copy_in_length%" goto break
@call _expand "%__copy_in%%__list_sep%%__copy_i%" __copy_current
@>>"%__copy_file%" echo @set "%__copy_out%%__list_sep%%__copy_i%=%__copy_current%"
@set /A __copy_i+=1
@goto loop
:break
@set __copy_i=
@set __copy_in=
@set __copy_out=
@>>"%__copy_file%" echo @del "%TEMP%\__copy_*.bat"
@set %__copy_command%=2^>NUL call "%__copy_file%"
@set __copy_command=
@set __copy_file=
@set __copy_current=
@set __copy_in_length=
@popd
