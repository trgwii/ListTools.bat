@pushd "%~dp0"
@call length "%~2" __shift_length
@set __shift_i=1
@set __shift_output=%~1
@call get 0 "%~2" "%~1"
:loop
@if not "%__shift_i%" LSS "%__shift_length%" goto break
@call get %__shift_i% "%~2" __shift_current
@set /A __shift_mi=%__shift_i%-1
@set "%~2_%__shift_mi%=%__shift_current%"
@set /A __shift_i+=1
@goto loop
:break
@set /A __shift_mi=%__shift_i%-1
@set "%~2_%__shift_mi%="
@set /A "%~2_length=%__shift_length%-1"
@set __shift_length=
@set __shift_i=
@set __shift_current=
@popd
