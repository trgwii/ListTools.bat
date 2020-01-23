@set __list_sep_set=1
@set __list_sep=

@call split " " "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32" x
@echo len "%xlength%"
@echo 0 "%x0%"
@echo 1 "%x1%"
@echo 2 "%x2%"
@echo 3 "%x3%"
@echo 4 "%x4%"
@echo 5 "%x5%"
@echo 6 "%x6%"
@echo 7 "%x7%"
@echo 8 "%x8%"
@echo 9 "%x9%"
@call each echo x

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
