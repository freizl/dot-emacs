
##################
### Compile JS2.el
### 1. open emacs without any config `emacn -q`
### 2. open js2.el
### 3. byte-compile-file
###
### command line (does not work for me)
### emacs -q --batch --eval  '(byte-compile-file "js2.el")'
###
##################

init-depends:
	git submodule init
	git submodule update

