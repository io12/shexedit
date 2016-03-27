BUILD = shexedit
SCRIPT = $(BUILD).sh

.PHONY = all install clean

$(BUILD): $(SCRIPT)
	cp $(SCRIPT) $(BUILD)

all: $(BUILD)

install: $(BUILD)
	cp $(BUILD) /usr/local/bin/$(BUILD)

clean:
	rm -f $(BUILD)
