@pushd "%~dp0"
@call init
@set "%~1%__list_sep%type=list"
@set "%~1%__list_sep%length=0"
@popd
