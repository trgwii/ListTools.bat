@setlocal EnableDelayedExpansion
@set list_0=foo
@set list_1=bar
@set list_length=2
@call _copy list lost command
@endlocal && %command%
@echo foo == %lost_0%
@echo bar == %lost_1%
@echo 2 == %lost_length%
