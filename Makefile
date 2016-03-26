.PONEY = all install clean

all: shexedit.sh
	cp shexedit.sh shexedit

install: all
	cp shexedit /usr/local/bin/shexedit

clean:
	rm -f shexedit
