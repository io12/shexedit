.PHONY = all install clean

shexedit: shexedit.sh
	cp shexedit.sh shexedit

all: shexedit

install: shexedit
	cp shexedit /usr/local/bin/shexedit

clean:
	rm -f shexedit
