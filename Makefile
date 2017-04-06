all: plugin

plugin: vundle theme vimrc
	@echo [install plugin.]
	vim +PluginInstall +qall

vundle: .vimrc
	@echo [install vundle.]
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

theme: vundle
	@echo [install theme molokai.]
	git clone https://github.com/tomasr/molokai.git
	cp -r ./molokai/colors ~/.vim/

vimrc: vundle
	@echo [update config.]
	cp .vimrc ~/

clean:
	@echo [clean up.]
	rm -rf ./molokai
