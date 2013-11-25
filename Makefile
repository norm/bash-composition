all: install

install:
	rsync -avP bin etc lib share var ${HOME}
	cp bashrc ${HOME}/.bashrc
	cp bash_profile ${HOME}/.bash_profile
