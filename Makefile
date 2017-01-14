PREFIX        ?=  /usr
RM            ?=  rm -f
INSTALL_DIR   ?=  install -m755 -d
INSTALL_PROG  ?=  install -m755
INSTALL_FILE  ?=  install -m644

all:
	@echo Run \'make install\' to install vq

install:
	$(INSTALL_DIR) $(DESTDIR)$(PREFIX)/bin
	$(INSTALL_DIR) $(DESTDIR)$(PREFIX)/share/man/man1
	$(INSTALL_DIR) $(DESTDIR)$(PREFIX)/share/vq
	$(INSTALL_PROG) vq $(DESTDIR)$(PREFIX)/bin/vq
	$(INSTALL_FILE) vq.1 $(DESTDIR)$(PREFIX)/share/man/man1/vq.1
	$(INSTALL_FILE) config/config $(DESTDIR)$(PREFIX)/share/vq/config

uninstall:
	$(RM) $(DESTDIR)$(PREFIX)/bin/vq
	$(RM) $(DESTDIR)$(PREFIX)/share/man/man1/vq.1
	$(RM) -r $(DESTDIR)$(PREFIX)/share/vq


