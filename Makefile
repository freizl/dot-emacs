EMACS = emacs
DDIR=depends

### TODO: 
### 1. increasing compile rather that compile every time
### 2. fix compile errors
### 

JS2 = $(DDIR)/js2.el

SRC = src
SRCS = \
	dotemacs \
	$(SRC)/emacs-rc.el \
	$(SRC)/emacs-rc-program.el

compile: compile-depends
	emacs -Q -L . -batch -f batch-byte-compile $(JS2)
	emacs -Q -L . -batch -f batch-byte-compile $(SRCS)

compile-depends: 
	cd $(DDIR)/haskell-mode && make compile
	cd $(DDIR)/auto-complete && make byte-compile
	cd $(DDIR)/scala-mode && make all

init-depends:
	git submodule init
	git submodule update

install:
	echo "(load-file \"~/git/dot-emacs/dotemacs\")" >> ~/.emacs
