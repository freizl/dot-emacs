
DDIR=depends

init-depends:
	git submodule init
	git submodule update

build:
	emacs -Q -L $(DDIR)/ -batch -f batch-byte-compile $(DDIR)/js2.el
	cd $(DDIR)/haskell-mode && make compile
	cd $(DDIR)/auto-complete && make byte-compile
	cd $(DDIR)/scala-mode && make all
	emacs -Q -L . -batch -f batch-byte-compile src/emacs-rc.el
	emacs -Q -L . -batch -f batch-byte-compile src/emacs-rc-program.el
	emacs -Q -L . -batch -f batch-byte-compile dotemacs

install:
	echo "(load-file ~/git/dot-emacs/dotemacs" >> ~/.emacs
