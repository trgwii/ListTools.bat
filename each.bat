@pushd "%~dp0"
@call length "%~2" __each_length
@set __each_i=0
:loop
@if not %__each_i% LSS %__each_length% goto break
@call get %__each_i% "%~2" __each_current
@%~1 %__each_current%
@set /A __each_i+=1
@goto loop
:break
@set __each_length=
@set __each_i=
@set __each_current=
@popd
