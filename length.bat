@pushd "%~dp0"
@call init
@call _expand "%~1%__list_sep%length" "%~2"
@popd
