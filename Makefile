.PHONY: install uninstall linter
SCRIPT := synonym

install:
	cp synonym /usr/local/bin/$(SCRIPT)
	chmod 755 /usr/local/bin/$(SCRIPT)

uninstall:
	rm -f /usr/local/bin/$(SCRIPT)

linter:
	shellcheck ./$(SCRIPT)
