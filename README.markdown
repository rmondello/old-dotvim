# Ricky's vim config

## About

This is the loose collection of files that make up Ricky's vimrc. Credit for most of it goes to [Phil Tang](http://tangphillip.com/) and [Mike White](http://mwhite.info/). Phil's beautiful Sunburst theme is embedded in the project, including extended C and Javascript syntax highlighting definitions.

Thanks to Mike, this project uses Pathogen, [a nice way of maintaining vim plugins](http://tammersaleh.com/posts/the-modern-vim-config-with-pathogen). Among the included plugins are [NERD Tree](http://www.vim.org/scripts/script.php?script_id=1658), a file explorer, and Snipmate, a way of bringing Textmate-style snippets to vim.

## Installation

	cd ~
	mv .vim .vim-backup
	mv .vimrc .vimrc-backup
	git clone https://github.com/rmondello/rmondello-vim-config.git
	mv rmondello-vim-config .vim
	ln -s .vim/vimrc .vimrc

That should be it!
