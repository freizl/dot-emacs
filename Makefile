
DDIR=depends

init-depends:
	git submodule init
	git submodule update

build: byte-compile
	echo "byte complie js2 mode and auto-complet"
	emacs -Q -L $(DDIR)/ -batch -f batch-byte-compile $(DDIR)/js2.el
	cd $(DDIR)/auto-complete && make byte-compile

byte-compile:
	emacs -Q -L . -batch -f batch-byte-compile dotemacs
	emacs -Q -L . -batch -f batch-byte-compile src/*.el


install:
	echo "(load-file ~/git/dot-emacs/dotemacs" >> ~/.emacs
