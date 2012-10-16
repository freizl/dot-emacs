
DDIR=depends

init-depends:
	git submodule init
	git submodule update

build:
	echo "byte complie js2 mode and auto-complet"
	emacs -Q -L $(DDIR)/ -batch -f batch-byte-compile $(DDIR)/js2.el
	cd $(DDIR)/auto-complete && make byte-compile

install:
	echo "(load-file ~/git/dot-emacs/dotemacs" >> ~/.emacs
