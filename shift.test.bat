@call split " " "03    Thomas Gummerson" t
@echo 0: %t_0%
@echo 1: %t_1%
@echo 2: %t_2%
@echo 3: %t_3%
@echo len: %t_length%
@echo shift
@call shift f t
@echo item: %f%
@echo 0: %t_0%
@echo 1: %t_1%
@echo 2: %t_2%
@echo 3: %t_3%
@echo len: %t_length%
@call join " " t s
@echo join: "%s%"
@call trim %s% trimmed
@echo trim: "%trimmed%"
