@call split " " "Hello World! banana pear" list
@call each echo list
@call join ":" list res
@echo %res%

@echo.
@echo push / pop test
@call split " " "Hello World! banana pear" list
@call each echo list

@echo.
@echo after push
@call push "apple" list
@call each echo list
@echo.
@echo after pop
@call pop foo list
@call each echo list
@echo item: %foo%
