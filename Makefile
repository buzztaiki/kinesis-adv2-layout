VDRIVE = /run/media/$(USER)/ADVANTAGE2
FILES = qwerty.txt state.txt

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
