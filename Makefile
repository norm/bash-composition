all: install

install:
	rsync -avP bin etc share ${HOME}
	cp bashrc ${HOME}/.bashrc
	cp bash_profile ${HOME}/.bash_profile
