VDRIVE = /run/media/$(USER)/ADVANTAGE2
FILES = qwerty.txt state.txt

# how to apply:
# 1. enter v-drive mode (type program + F1)
# 2. run make
# 3. exit v-drive mode (type program + F1)

.PHONY: default
default: install

.PHONY: install
install($(FILES)):
	cp $% $(VDRIVE)/active/$%
install: install($(FILES))


.PHONY: diff
diff($(FILES)):
	diff -u $(VDRIVE)/active/$% $% 
diff: diff($(FILES))
