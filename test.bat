set __list_sep_set=1
set __list_sep=
@call split " " "input1 input2! input3" list
@echo errorlevel %errorlevel%
@echo "%listtype%"
@echo "%list0%"
@echo "%list1%"
@echo "%list2%"
@echo "%listlength%"
@call push "input4" list
@echo "%listtype%"
@echo "%list0%"
@echo "%list1%"
@echo "%list2%"
@echo "%list3%"
@echo "%listlength%"
@call pop res list
@echo "%res%"
@echo "%listtype%"
@echo "%list0%"
@echo "%list1%"
@echo "%list2%"
@echo "%listlength%"

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

@call each "set foo=" list
@echo %foo:~1%
