@pushd "%~dp0"
@call init
@call _expand "%~2%__list_sep%%~1" "%~3"
@popd
