BUILD = shexedit
SCRIPT = $(BUILD).sh

.PHONY = all install uninstall clean

$(BUILD): $(SCRIPT)
	cp $(SCRIPT) $(BUILD)

all: $(BUILD)

install: $(BUILD)
	cp $(BUILD) /usr/local/bin/$(BUILD)

uninstall: /usr/local/bin/$(BUILD)
	rm /usr/local/bin/$(BUILD)

clean:
	rm -f $(BUILD)
